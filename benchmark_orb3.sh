#!/bin/bash

# set the index of the dataset(default 01), and the directory of datasets
index=${1:-01}
dir=${2:-"/home/runxin/Documents/SLAM_Dataset/Mohd"}
ds_name=Mohd_${index}
ds_path=${dir}/${ds_name}



echo "Dataset Index: ${index}"
echo "Dataset Name: ${ds_name}"
echo "Dataset Path: ${ds_path}"

# Mono Mode
slam_cmd="./Examples/Monocular/mono_euroc \
    ./Vocabulary/ORBvoc.txt \
    ./Examples/Monocular/Mohd_mono.yaml \
    ${ds_path} \
    ${ds_path}/Mohd_Timestamps_for_ORBSLAM.txt"
echo "Currently executing: ${slam_cmd}"
eval ${slam_cmd}

if [ -f "CameraTrajectory.txt" ] && [ -f "KeyFrameTrajectory.txt" ]; then
    echo "Traj files exist"
    echo "Output Traj: CT_${index}_orb3_mono.txt and KFT_${index}_orb3_mono.txt"
    mv CameraTrajectory.txt CT_${index}_orb3_mono.txt
    mv KeyFrameTrajectory.txt KFT_${index}_orb3_mono.txt
else 
    echo "Error, Traj files do not exist"
fi   


# Stereo Mode
slam_cmd="./Examples/Stereo/stereo_euroc \
    ./Vocabulary/ORBvoc.txt \
    ./Examples/Stereo/Mohd_stereo.yaml \
    ${ds_path} \
    ${ds_path}/Mohd_Timestamps_for_ORBSLAM.txt"
echo "Currently executing: ${slam_cmd}"
eval ${slam_cmd}

if [ -f "CameraTrajectory.txt" ] && [ -f "KeyFrameTrajectory.txt" ]; then
    echo "Traj files exist"
    echo "Output Traj: CT_${index}_orb3_stereo.txt and KFT_${index}_orb3_stereo.txt"
    mv CameraTrajectory.txt CT_${index}_orb3_stereo.txt
    mv KeyFrameTrajectory.txt KFT_${index}_orb3_stereo.txt
else 
    echo "Error, Traj files do not exist"
fi   

# Stereo-i Mode
slam_cmd="./Examples/Stereo-Inertial/stereo_inertial_euroc \
    ./Vocabulary/ORBvoc.txt \
    ./Examples/Stereo-Inertial/Mohd_stereo_i.yaml \
    ${ds_path} \
    ${ds_path}/Mohd_Timestamps_for_ORBSLAM.txt"
echo "Currently executing: ${slam_cmd}"
eval ${slam_cmd}

if [ -f "CameraTrajectory.txt" ] && [ -f "KeyFrameTrajectory.txt" ]; then
    echo "Traj files exist"
    echo "Output Traj: CT_${index}_orb3_stereo_i.txt and KFT_${index}_orb3_stereo_i.txt"
    mv CameraTrajectory.txt CT_${index}_orb3_stereo_i.txt
    mv KeyFrameTrajectory.txt KFT_${index}_orb3_stereo_i.txt
else 
    echo "Error, Traj files do not exist"
fi   

# RGBD Mode
slam_cmd="./Examples/RGB-D/rgbd_tum \
    ./Vocabulary/ORBvoc.txt \
    ./Examples/RGB-D/Mohd_rgbd.yaml \
    ${ds_path} \
    ${ds_path}/Mohd_TUM_associations.txt"
echo "Currently executing: ${slam_cmd}"
eval ${slam_cmd}

if [ -f "CameraTrajectory.txt" ] && [ -f "KeyFrameTrajectory.txt" ]; then
    echo "Traj files exist"
    echo "Output Traj: CT_${index}_orb3_rgbd.txt and KFT_${index}_orb3_rgbd.txt"
    mv CameraTrajectory.txt CT_${index}_orb3_rgbd.txt
    mv KeyFrameTrajectory.txt KFT_${index}_orb3_rgbd.txt
else 
    echo "Error, Traj files do not exist"
fi   