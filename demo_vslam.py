import glob
import os
from multiprocessing import Process, Queue
from pathlib import Path

import cv2
import evo.main_ape as main_ape
import numpy as np
import torch
from evo.core import sync
from evo.core.metrics import PoseRelation
from evo.core.trajectory import PoseTrajectory3D
from evo.tools import file_interface

from dpvo.config import cfg
from dpvo.dpvo import DPVO
from dpvo.plot_utils import plot_trajectory
from dpvo.stream import image_stream
from dpvo.utils import Timer

SKIP = 0

def show_image(image, t=0):
    image = image.permute(1, 2, 0).cpu().numpy()
    cv2.imshow('image', image / 255.0)
    cv2.waitKey(t)

@torch.no_grad()
def run(cfg, network, imagedir, calib, stride=1, viz=False, show_img=False):

    slam = None

    queue = Queue(maxsize=8)
    reader = Process(target=image_stream, args=(queue, imagedir, calib, stride, 0))
    reader.start()

    img_cnt = 0
    while 1:
        if img_cnt % 100 == 0:
            print(f"Processed {img_cnt} images")
            
        (t, image, intrinsics) = queue.get()
        if t < 0: break

        image = torch.from_numpy(image).permute(2,0,1).cuda()
        intrinsics = torch.from_numpy(intrinsics).cuda()

        if show_img:
            show_image(image, 1)

        if slam is None:
            slam = DPVO(cfg, network, ht=image.shape[1], wd=image.shape[2], viz=viz)

        with Timer("SLAM", enabled=True):
            slam(t, image, intrinsics)

        img_cnt += 1

    reader.join()

    return slam.terminate()


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('--network', type=str, default='models/dpvo.pth')
    parser.add_argument('--config', default="config/default.yaml")
    parser.add_argument('--calib', required=True)
    parser.add_argument('--stride', type=int, default=2)
    parser.add_argument('--viz', action="store_true")
    parser.add_argument('--show_img', action="store_true")
    parser.add_argument('--trials', type=int, default=1)
    parser.add_argument('--datasetdir', required=True)
    parser.add_argument('--scene', required=True)
    parser.add_argument('--backend_thresh', type=float, default=64.0)
    parser.add_argument('--plot', action="store_true")
    parser.add_argument('--opts', nargs='+', default=[])
    parser.add_argument("--out_traj_path", help="path to saved estimated trajectory")
    args = parser.parse_args()

    cfg.merge_from_file(args.config)
    cfg.BACKEND_THRESH = args.backend_thresh
    cfg.merge_from_list(args.opts)

    print("\nRunning with config...")
    print(cfg, "\n")

    torch.manual_seed(1234)

    scene = args.scene   
    imagedir = os.path.join(args.eurocdir, scene)
    
    print("\nRunning VO...")
    calib_fn = os.path.join("calib", args.calib)
    traj_est, timestamps = run(cfg, args.network, imagedir, calib_fn, args.stride, args.viz, args.show_img)

    if args.out_traj_path is not None:
        images_list = sorted(glob.glob(os.path.join(imagedir, "*.png")))[::args.stride]
        tstamps = np.asarray([float(x.split('/')[-1][:-4]) for x in images_list])

        assert traj_est.shape[0] == tstamps.shape[0], "Trajectory length does not match number of images"

        traj_out = np.zeros((tstamps.shape[0], 8))
        traj_out[:, 0] = tstamps * 1e-9
        traj_out[:, 1:] = traj_est

        out_trajfn = args.out_traj_path + '/stamped_traj_estimate.txt'
        np.savetxt(out_trajfn, traj_out, fmt='%.6f', header='ts x y z qx qy qz qw')
        print("Saved trajectory to {}".format(out_trajfn))
