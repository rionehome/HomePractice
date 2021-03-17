#!/bin/bash -exv

# Install simulator (https://demura.net/robot/hard/19934.html)
source ~/.bashrc
cd ~/catkin_ws/src
git clone https://github.com/RoboticaUtnFrba/create_autonomy.git
git clone https://github.com/RoboticaUtnFrba/libcreate.git

cd ~/catkin_ws
./src/create_autonomy/sensors/ca_imu/scripts/install_rtimulib.sh
cd ~/catkin_ws
sudo apt install -y python3-vcstool
vcs import src < src/create_autonomy/dependencies.repos
rosdep update
rosdep install --from-paths src -yi
echo -e "export GAZEBO_IP=127.0.0.1\n
         export LASER=rplidar\n
         export NUM_ROBOTS=1\n
         export RVIZ=true\n
         source /opt/ros/melodic/setup.bash\n
         source ~/catkin_ws/devel/setup.bash\n"
source ~/.bashrc

# Launch simulator
# roslaunch ca_gazebo create_empty_world.launch