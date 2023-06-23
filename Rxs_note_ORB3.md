# ORBSLAM3 Installation Instruction
Source：https://blog.csdn.net/kuvinxu/article/details/126233165

# Modified code
## change 1 
https://blog.csdn.net/kuvinxu/article/details/126233165

5.2 Running Mono -> mono_euroc.cc -> l 83 -> false to true to aktivate GUI
## change 2
https://blog.csdn.net/weixin_59058976/article/details/121710474?spm=1001.2101.3001.6650.2&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-121710474-blog-124587201.235%5Ev28%5Epc_relevant_recovery_v2&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-121710474-blog-124587201.235%5Ev28%5Epc_relevant_recovery_v2&utm_relevant_index=5

ORB_SLAM3 -> delete "*1e9" to solve time stamp error

# Benchmarking

You can start the SLAM program manually from the command line. Alternatively, for running different modes in a batch, you can use the bash script "benchmark_orb3.sh".

Please adjust the path before running.

## benchmark_orb3.sh
Please adjust the dir paths in cml or in the bash file directly.

```
./benchmark_orb3.sh 25 /home/usrname/Documents/SLAM_Dataset/Mohd
# useage: ./benchmark_orb3.sh datast_index dataset_dir
```

## mono
./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/EuRoC.yaml /home/runxin/Documents/SLAM_Dataset/EuRoC/MH_01_easy/ ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt

./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/Mohd_mono.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11 /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11/Mohd_Timestamps_for_ORBSLAM.txt

## mono i
./Examples/Monocular-Inertial/mono_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial/EuRoC.yaml /home/runxin/Documents/SLAM_Dataset/EuRoC/MH_01_easy ./Examples/Monocular-Inertial/EuRoC_TimeStamps/MH01.txt

./Examples/Monocular-Inertial/mono_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial/Mohd_mono_i.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11 /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11/Mohd_Timestamps_for_ORBSLAM.txt

## stereo
./Examples/Stereo/stereo_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo/EuRoC.yaml /home/runxin/Documents/SLAM_Dataset/EuRoC/MH_01_easy ./Examples/Stereo/EuRoC_TimeStamps/MH01.txt 

./Examples/Stereo/stereo_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo/Mohd_stereo.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11 /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11/Mohd_Timestamps_for_ORBSLAM.txt

## stereo i
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/EuRoC.yaml /home/runxin/Documents/SLAM_Dataset/EuRoC/MH_01_easy ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt

./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/Mohd_stereo_i.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11 /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_11/Mohd_Timestamps_for_ORBSLAM.txt


## rgbd
./Examples/RGB-D/rgbd_tum  ./Vocabulary/ORBvoc.txt /home/runxin/Software/ORB_SLAM3/Examples/RGB-D/TUM1.yaml /home/runxin/Software/ORB_SLAM3/dataset/TUM_rgbd/rgbd_dataset_freiburg1_desk /home/runxin/Software/ORB_SLAM3/Examples/RGB-D/associations/fr1_desk.txt

./Examples/RGB-D/rgbd_tum  ./Vocabulary/ORBvoc.txt /home/runxin/Software/ORB_SLAM3/Examples/RGB-D/Mohd_rgbd.yaml /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_10_tum /home/runxin/Documents/SLAM_Dataset/Mohd/Mohd_10_tum/Mohd_TUM_associations.txt 

## rgbd i
D435i  only, no dataset supported

