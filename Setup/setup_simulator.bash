#!/bin/bash -exv

# Install simulator (https://demura.net/robot/hard/19934.html)
source ~/.bashrc
cd ~/catkin_ws/src
git clone https://github.com/RoboticaUtnFrba/create_autonomy.git
git clone https://github.com/RoboticaUtnFrba/libcreate.git

cd ~/catkin_ws
#sudo apt install libxml2-dev libxslt-dev
#sudo apt install qtbase5-dev qttools5-dev-tools qt5-default
sudo apt install libqt4-dev libqt4-dev-bin libqt4-opengl-dev libqtwebkit-dev qt4-linguist-tools qt4-qmake
./src/create_autonomy/sensors/ca_imu/scripts/install_rtimulib.sh
cd ~/catkin_ws
sudo apt install -y python3-vcstool
vcs import src < src/create_autonomy/dependencies.repos
rosdep update
rosdep install --from-paths src -yi

echo -e "export GAZEBO_IP=127.0.0.1
export LASER=rplidar
export NUM_ROBOTS=1
export RVIZ=true
source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

source ~/.bashrc


# Launch simulator
# cd ~/catkin_ws && catkin_make
# roslaunch ca_gazebo create_empty_world.launch
# roslaunch ca_tools keyboard_teleop.launch
