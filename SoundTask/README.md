## Installation


- Pocketsphinx

```
$ python -m pip install --upgrade pip setuptools wheel
$ pip install --upgrade pocketsphinx
```

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
