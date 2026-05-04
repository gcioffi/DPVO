TRAJECTORIES=(indoor_45_2 indoor_45_9 indoor_45_14 indoor_forward_3 indoor_forward_6 indoor_forward_7 outdoor_45_1 outdoor_forward_1 outdoor_forward_3 outdoor_forward_5)

for TRAJ in "${TRAJECTORIES[@]}"; do
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/UZHFPV/${TRAJ}/1/slam
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/UZHFPV/${TRAJ}/1/with_ba

    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/UZHFPV/${TRAJ}/2/slam
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/UZHFPV/${TRAJ}/2/with_ba
    
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/UZHFPV/${TRAJ}/3/slam
    rosrun rpg_trajectory_evaluation analyze_trajectory_single.py /home/giovanni/VSLAM_failure_modes_analysis/DPVO_docker/results/UZHFPV/${TRAJ}/3/with_ba
done
