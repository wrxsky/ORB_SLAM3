# ORBSLAM3 Installation Instruction
Source：https://blog.csdn.net/kuvinxu/article/details/126233165

# Modified code
## change 1 
https://blog.csdn.net/kuvinxu/article/details/126233165

5.2 运行单目 -> mono_euroc.cc -> l 83 -> false to true to aktivate GUI
## change 2
https://blog.csdn.net/weixin_59058976/article/details/121710474?spm=1001.2101.3001.6650.2&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-121710474-blog-124587201.235%5Ev28%5Epc_relevant_recovery_v2&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-121710474-blog-124587201.235%5Ev28%5Epc_relevant_recovery_v2&utm_relevant_index=5

ORB_SLAM3 -> delete "*1e9" to solve time stamp error

# mono
./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/EuRoC.yaml /home/runxin/Documents/SLAM_Dataset/EuRoC/MH_01_easy/ ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt

./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/Mohd_mono.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11 /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11/Mohd_Timestamps_for_ORBSLAM.txt

# mono i
./Examples/Monocular-Inertial/mono_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial/EuRoC.yaml /home/runxin/Documents/SLAM_Dataset/EuRoC/MH_01_easy ./Examples/Monocular-Inertial/EuRoC_TimeStamps/MH01.txt

./Examples/Monocular-Inertial/mono_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial/Mohd_mono_i.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11 /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11/Mohd_Timestamps_for_ORBSLAM.txt

# stereo
./Examples/Stereo/stereo_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo/EuRoC.yaml /home/runxin/Documents/SLAM_Dataset/EuRoC/MH_01_easy ./Examples/Stereo/EuRoC_TimeStamps/MH01.txt 

./Examples/Stereo/stereo_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo/Mohd_stereo.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11 /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11/Mohd_Timestamps_for_ORBSLAM.txt

# stereo i
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/EuRoC.yaml /home/runxin/Documents/SLAM_Dataset/EuRoC/MH_01_easy ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt

./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/Mohd_stereo_i.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11 /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11/Mohd_Timestamps_for_ORBSLAM.txt


# rgbd
./Examples/RGB-D/rgbd_tum  ./Vocabulary/ORBvoc.txt /home/runxin/Software/ORB_SLAM3/Examples/RGB-D/TUM1.yaml /home/runxin/Software/ORB_SLAM3/dataset/TUM_rgbd/rgbd_dataset_freiburg1_desk /home/runxin/Software/ORB_SLAM3/Examples/RGB-D/associations/fr1_desk.txt

./Examples/RGB-D/rgbd_tum  ./Vocabulary/ORBvoc.txt /home/runxin/Software/ORB_SLAM3/Examples/RGB-D/Mohd_rgbd.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_10_tum /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_10_tum/Mohd_TUM_associations.txt 

# rgbd i
D435i  only, no dataset supported

# evo
## Install 
pip install evo --upgrade --no-binary evo
https://github.com/MichaelGrupp/evo


## format convert
evo_traj euroc data.csv --save_as_tum

## Evaluation EuRoC MH_01
evo_traj tum --ref /home/runxin/Software/ORB_SLAM3/dataset/EuRoC/MH_01_easy/mav0/state_groundtruth_estimate0/data.tum /home/runxin/Software/ORB_SLAM3/Results/CameraTrajectory_MH_01_mono.txt /home/runxin/Software/ORB_SLAM3/Results/CameraTrajectory_MH_01_mono_i.txt /home/runxin/Software/ORB_SLAM3/Results/CameraTrajectory_MH_01_stereo.txt /home/runxin/Software/ORB_SLAM3/Results/CameraTrajectory_MH_01_stereo_i.txt -p -a -s

evo_traj tum --ref /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_10_tum/groundtruth.txt /home/runxin/Software/ORB_SLAM3/Results/CameraTrajectory_Mohd_03_mono.txt /home/runxin/Software/ORB_SLAM3/Results/CameraTrajectory_Mohd_03_stereo.txt /home/runxin/Software/ORB_SLAM3/Results/CameraTrajectory_Mohd_10_rgbd.txt /home/runxin/Software/ORB_SLAM3/Results/KeyFrameTrajectory_Mohd_10_rtab_rgbd_robot.txt -p -a -s --plot_mode=xy

evo_traj tum --ref /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_10_tum/groundtruth.txt /home/runxin/Software/ORB_SLAM3/Results/KeyFrameTrajectory_Mohd_03_mono.txt /home/runxin/Software/ORB_SLAM3/Results/KeyFrameTrajectory_Mohd_03_stereo.txt /home/runxin/Software/ORB_SLAM3/Results/KeyFrameTrajectory_Mohd_10_rgbd.txt /home/runxin/Software/ORB_SLAM3/Results/KeyFrameTrajectory_Mohd_10_rtab_rgbd_robot.txt -p -a -s --plot_mode=xy

## Evaluation TUM
evo_traj tum --ref /path/ref /path/to/campare -p -a --plot_mode=xy

evo_traj tum --ref /home/runxin/Software/ORB_SLAM3/dataset/TUM_rgbd/rgbd_dataset_freiburg1_desk/groundtruth.txt /home/runxin/Software/ORB_SLAM3/Results/CameraTrajectory_tum_desk.txt -p -a --plot_mode=xy

## ape
evo_ape tum /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_10_tum/groundtruth.txt  /home/runxin/Software/ORB_SLAM3/Results/CameraTrajectory_Mohd_03_stereo.txt -va --plot --plot_mode xy
evo_rpe tum /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_10_tum/groundtruth.txt  /home/runxin/Software/ORB_SLAM3/Results/KeyFrameTrajectory_Mohd_10_rtab_rgbd_robot.txt -va --plot --plot_mode xy

