## Installation


- Pocketsphinx

```
$ python -m pip install --upgrade pip setuptools wheel
$ pip install --upgrade pocketsphinx
```
[参考]　[14期生東雲陽美さんの開発日誌](http://rione.org/dokuwiki/14%E6%9C%9F%E7%94%9F/%E6%9D%B1%E9%9B%B2%E9%99%BD%E7%BE%8E/%E9%96%8B%E7%99%BA%E6%97%A5%E8%AA%8C)

- Svoxpico
```
$ sudo apt-get install -y libttspico-utils
```
- ReSpeaker
以下パソコンにReSpeakerを繋いだ状態で
```
$ git checkout develop 
$ cd sound_system/prepare_tools/
$ sh respeaker.sh
```
- dlib
```
$ sudo apt-get install -y cmake gfortran graphicsmagick libgraphicsmagick1-dev libatlas-base-dev libavcodec-dev libavformat-dev libboost-all-dev libgtk2.0-dev libjpeg-dev liblapack-dev libswscale-dev python-dev python-protobuf software-properties-common
$ pip3 install dlib --user
```
