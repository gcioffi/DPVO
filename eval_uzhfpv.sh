# Indoor forward
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=indoor_forward_3_snapdragon_with_gt/img/left --calib=uzhfpv_indoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/indoor_forward_3
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=indoor_forward_3_snapdragon_with_gt/img/left --calib=uzhfpv_indoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/indoor_forward_3 --opts LOOP_CLOSURE True
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=indoor_forward_7_snapdragon_with_gt/img/left --calib=uzhfpv_indoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/indoor_forward_7
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=indoor_forward_7_snapdragon_with_gt/img/left --calib=uzhfpv_indoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/indoor_forward_7 --opts LOOP_CLOSURE True

# Indoor 45
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=indoor_45_2_snapdragon_with_gt/img/left --calib=uzhfpv_indoor_45.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/indoor_45_2
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=indoor_45_2_snapdragon_with_gt/img/left --calib=uzhfpv_indoor_45.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/indoor_45_2 --opts LOOP_CLOSURE True
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=indoor_45_14_snapdragon_with_gt/img/left --calib=uzhfpv_indoor_45.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/indoor_45_14
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=indoor_45_14_snapdragon_with_gt/img/left --calib=uzhfpv_indoor_45.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/indoor_45_14 --opts LOOP_CLOSURE True

# Outdoor forward
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_forward_1_snapdragon_with_gt/img/left --calib=uzhfpv_outdoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_forward_1
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_forward_1_snapdragon_with_gt/img/left --calib=uzhfpv_outdoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_forward_1 --opts LOOP_CLOSURE True
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_forward_3_snapdragon_with_gt/img/left --calib=uzhfpv_outdoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_forward_3
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_forward_3_snapdragon_with_gt/img/left --calib=uzhfpv_outdoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_forward_3 --opts LOOP_CLOSURE True
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_forward_5_snapdragon_with_gt/img/left --calib=uzhfpv_outdoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_forward_5
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_forward_5_snapdragon_with_gt/img/left --calib=uzhfpv_outdoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_forward_5 --opts LOOP_CLOSURE True
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_forward_10_snapdragon/img/left --calib=uzhfpv_outdoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_forward_10
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_forward_10_snapdragon/img/left --calib=uzhfpv_outdoor_forward.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_forward_10 --opts LOOP_CLOSURE True

# Outdoor 45
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_45_1_snapdragon_with_gt/img/left --calib=uzhfpv_outdoor_45.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_45_1
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=outdoor_45_1_snapdragon_with_gt/img/left --calib=uzhfpv_outdoor_45.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/outdoor_45_1 --opts LOOP_CLOSURE True

# Race 1
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=race_1/img/no_init_static_part --calib=uzhfpv_race.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/race_1
python demo_vslam.py --datasetdir=/datasets/UZH_FPV --scene=race_1/img/no_init_static_part --calib=uzhfpv_race.txt --fisheye --out_traj_prefix=/home/giovanni/DPVO_docker/DPVO/race_1 --opts LOOP_CLOSURE True