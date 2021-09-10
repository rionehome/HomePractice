ROSの概要を理解する講習会の内容
===

## Week1 セットアップ  
- インストール  
HomePractice/Setup/setup_ros.bash を使用．

## Week2 トピック通信の勉強 

- 動画  
https://youtu.be/PL85Pw_zQH0  
https://youtu.be/MDCQ4oH6Dlc  

- 注意  
端末を開いて実際にコマンドを実行するのは、56分40秒からにして下さい。それより前の部分のコマンドは実行しないようにしてください。  
ssh ubuntu.... というコマンドを動画内で実行していますが、実行しなくて大丈夫です。

- 達成目的  
• パッケージを作成して実行する方法を習得  
• トピック通信とは何かを理解  
• ノード名、トピック名、publishするメッセージ、subscribe後に実行する関数などを自由に記述する事ができるように

## Week3 Publisherの実装  
3つ端末を開いて各コマンドを打ち込む  
```
$ roscore
$ rosrun turtlesim turtlesim_node
$ rosrun turtlesim turtle_teleop_key
```
キーボードの矢印で亀を動かすことができる．  
新しい端末で
```
$ rosrun rqt_graph rqt_graph
```
トピック通信の様子が確認できる．  
rosrun turtlesim_teleop_keyを終了して，新しくコマンドを入力する．
```
$ rostopic pub -r 10 /turtle1/cmd_vel geometry_msgs/Twist '[3.0, 0.0, 0.0]' '[0.0, 0.0, 2.0]'
```
亀が動く．
直接トピックとメッセージを指定して，亀を動かすことができる．  
メッセージの型を確認
```
$ rosmsg show geometry_msgs/Twist
```

- Week4のための宿題  
自分でパッケージを作成し，その２で入力したコマンドを送るpublisherを実装．完成したらgithubにあげる．余裕があれば、launchファイルから起動できるように．  

- 参考にするサイト  
https://kato-robotics.hatenablog.com/entry/2019/02/18/053255  
http://wiki.ros.org/ja/ROS/Tutorials/UnderstandingNodes  
http://wiki.ros.org/ja/ROS/Tutorials/UnderstandingTopics  
http://wiki.ros.org/ja/ROS/Tutorials  
http://wiki.ros.org/ja

## Week4 Turtlebot2を動かす

内容は以下のリポジトリから抜粋

https://github.com/rionehome/Turtlebot2-On-Melodic/blob/master/README.md
- setup  
HomePractice/Setup/setup_turtlebot2.bash を使用．

- 実装  
roslaunch turtlebot_teleop keyboard_teleop.launch のトピック通信を参考にし，宿題で作成してきたプログラムを改良することで，Turtlebot2を動かす．
