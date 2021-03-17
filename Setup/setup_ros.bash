#!/bin/bash -exv

# Install ROS Melodic
sudo apt update
sudo apt -y upgrade
cd ~
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu18.04_desktop
cd ros_setup_scripts_Ubuntu18.04_desktop
./step1.bash
source ~/.bashrc

# Create catkin_ws
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make
