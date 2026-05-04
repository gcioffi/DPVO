TRAJECTORIES=(ME000 ME001 ME002 ME003 ME004 ME005 ME006 ME007 MH000 MH001 MH002 MH003 MH004 MH005 MH006 MH007)

for TRAJ in "${TRAJECTORIES[@]}"; do
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/TartanAir/${TRAJ}/1/slam
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/TartanAir/${TRAJ}/1/with_ba

    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/TartanAir/${TRAJ}/2/slam
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/TartanAir/${TRAJ}/2/with_ba
    
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/TartanAir/${TRAJ}/3/slam
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/TartanAir/${TRAJ}/3/with_ba
done
