## Installation


- Pocketsphinx

方法1
```
$ python -m pip install --upgrade pip setuptools wheel
$ sudo apt-get install -y python python-dev python-pip build-essential swig git libpulse-dev
$ sudo apt-get install libasound2-dev
$ pip install --upgrade pocketsphinx
$ pip3 install --upgrade pocketsphinx
```

方法2
```
$ cd ~
$ git clone --recursive https://github.com/cmusphinx/pocketsphinx-python/
$ cd pocketsphinx-python
$ python setup.py install
```

[参考]　[14期生東雲陽美さんの開発日誌](http://rione.org/dokuwiki/14%E6%9C%9F%E7%94%9F/%E6%9D%B1%E9%9B%B2%E9%99%BD%E7%BE%8E/%E9%96%8B%E7%99%BA%E6%97%A5%E8%AA%8C)

- Svoxpico
```
$ sudo apt-get install -y libttspico-utils
```
- ReSpeaker
以下パソコンにReSpeakerを繋いだ状態で
```
$ cd ./setup/
$ sh respeaker.sh
```
- dlib
```
$ sudo apt-get install -y cmake gfortran graphicsmagick libgraphicsmagick1-dev libatlas-base-dev libavcodec-dev libavformat-dev libboost-all-dev libgtk2.0-dev libjpeg-dev liblapack-dev libswscale-dev python-dev python-protobuf software-properties-common
$ pip3 install dlib --user
```
- Goolge Speech Recognition
```
$ pip3 install SpeechRecognition --user
$ sudo apt install portaudio19-dev
$ sudo apt install python-pyaudio python3-pyaudio
$ pip3 install pyaudio
```
- Jupyter lab
```
$ pip3 install jupyterlab
$ export PATH="$HOME/.local/bin:$PATH"
$ jupyter-lab (jupyter labを起動して，Sound.ipynbをすすめる)
```
