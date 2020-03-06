#!/bin/bash

sudo apt update && sudo apt install -y libx264-dev libswscale-dev libavutil-dev libavcodec-dev
wait

mkdir -p ws_ros_h264_streamer/src
cd ws_ros_h264_streamer/src
git clone https://github.com/Changliu52/ros_h264_streamer.git
wait

cd ../..
catkin build
