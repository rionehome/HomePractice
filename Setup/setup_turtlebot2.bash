#!/bin/bash -xve

cd ~/catkin_ws
url -sLf https://raw.githubusercontent.com/gaunthan/Turtlebot2-On-Melodic/master/install_basic.sh | bash
cd ~/catkin_ws
catkin_make
source ./devel/setup.bash

# how to manipulate turtlebot2 (https://github.com/rionehome/Turtlebot2-On-Melodic/blob/master/README.md)
# $ ls /dev | grep kobuki  # check the computer is connected to turtlbot
# $ roslaunch turtlebot_bringup minimal.launch  # bring up turtlebot
# $ roslaunch turtlebot_teleop keyboard_teleop.launch  # manipurate  turtlebot using keyboard
# $ rostopic pub -r 10 /mobile_base/commands/velocity geometry_msgs/Twist '{linear: {x: 0.3}, angular: {z: 5.0}}'  # manipurate using CLI command
