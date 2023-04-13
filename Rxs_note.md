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
./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/EuRoC.yaml ./dataset/MH_01_easy ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt

./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular/EuRoC_Mohd.yaml ./dataset/Mohd_01 ./Examples/Monocular/EuRoC_TimeStamps/Mohd_01.txt 

# mono i
./Examples/Monocular-Inertial/mono_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Monocular-Inertial/EuRoC.yaml ./dataset/MH_01_easy ./Examples/Monocular-Inertial/EuRoC_TimeStamps/MH01.txt

# stereo
./Examples/Stereo/stereo_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo/EuRoC.yaml ./dataset/MH_01_easy ./Examples/Stereo/EuRoC_TimeStamps/MH01.txt 

# stereo i
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/EuRoC.yaml ./dataset/MhochhintertuH_01_easy ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt 

# evo
## Install 
pip install evo --upgrade --no-binary evo
https://github.com/MichaelGrupp/evo

## Evaluation
evo_traj tum --ref /home/runxin/Software/ORB_SLAM3/dataset/MH_01_easy/mav0/state_groundtruth_estimate0/data.tum /home/runxin/Software/ORB_SLAM3/CameraTrajectory.txt -p -a -s
