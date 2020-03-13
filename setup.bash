#!/bin/bash

sudo apt update && sudo apt install -y libx264-dev libswscale-dev libavutil-dev libavcodec-dev
wait

mkdir -p ws_ros_h264_streamer/src
cd ws_ros_h264_streamer/src
git clone https://github.com/Changliu52/ros_h264_streamer.git
wait

cd ../..
catkin build

# test
# run streaming (need to change testStreamer.cpp ->>> ("topic,t", po::value<std::string>(&conf.camera_topic)->default_value("/tegra_stereo/merged/image_raw"), "camera topic to stream")
# rosrun ros_h264_streamer testStreamer --low-quality

# watch udp
# sudo tcpdump -i lo udp -v

# save to file
# sudo tcpdump -i lo udp -w packets.pcap

# read the file
# sudo apt install wireshark
# wireshark
