#!/bin/bash -exv

# Install ROS Melodic
sudo apt update
sudo apt -y upgrade
cd ~
git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu18.04_desktop
cd ros_setup_scripts_Ubuntu18.04_desktop
sudo ./step1.bash
source ~/.bashrc

# Create catkin_ws
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
cat ~/.bashrc
source ~/.bashrc
source /opt/ros/melodic/setup.bash
echo "######################################################################"
echo $ROS_VERSION
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws
catkin_make
#roscore
#catkin_make
