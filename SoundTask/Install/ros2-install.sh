#!/bin/sh
cd
echo "ros1-melodicはインストール済みですか？(y/n)"
read mel
echo "ros1-kineticはインストール済みですか？(y/n)"
read kin
sudo apt update
sudo apt install curl gnupg2 lsb-release
curl http://repo.ros2.org/repos.key | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
export CHOOSE_ROS_DISTRO=crystal
sudo apt update
sudo apt install ros-${CHOOSE_ROS_DISTRO}-desktop
sudo apt install python3-argcomplete
if [ $mel = 'y' ]; then
    sed -e 's!source /opt/ros/melodic/setup.bash!#source /opt/ros/melodic/setup.bash!' backup_bashrc.txt > .bashrc
fi
if [ $kin = 'y' ]; then
    sed -e 's!source /opt/ros/kinetic/setup.bash!#source /opt/ros/kinetic/setup.bash!' backup_bashrc.txt > .bashrc
fi
echo "source /opt/ros/${CHOOSE_ROS_DISTRO}/setup.bash" >> ~/.bashrc
source ~/.bashrc
if [ $mel = 'y' ]; then
    sudo apt install ros-${CHOOSE_ROS_DISTRO}-ros1-bridge
fi
cd
mkdir -p ros_ws/src
cd ros_ws/src
git clone https://github.com/l1sum/turtlebot_bringup.git
cd turtlebot_bringup/
git checkout ydlidar_ros2
cd ..
cd ..
sudo apt install python3-colcon-common-extensions
colcon build --packages-select turtlebot_bringup
echo "処理中..."
sleep 5
colcon build
source ~/ros_ws/src/turtlebot_bringup/install/setup.bash

