#!/bin/sh
echo "pocketsphinxをインストールしますか?(y/n)"
read ps
echo "treetaggerをインストールしますか?(y/n)"
read ttr
echo "espeakをインストールしますか?(y/n)"
read es
sudo apt-get install git
if [ $ps = 'y' ]; then
    sudo apt-get install -y python python-dev python-pip build-essential swig git libpulse-dev
    git clone https://github.com/cmusphinx/pocketsphinx-python.git
    sudo pip install pocketsphinx
fi

if [ $ttr = 'y' ]; then
    cd
    mkdir ttr
    cd ttr

    wget  http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/install-tagger.sh
    wget  http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/tagger-scripts.tar.gz
    wget  http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/tree-tagger-linux-3.2.1.tar.gz
    wget  http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/english.par.gz

    chmod +x install-tagger.sh
    ./install-tagger.sh
fi

if [ $es = 'y' ]; then
    sudo apt-get install espeak
fi
cd
git clone https://matsudayamato@bitbucket.org/matsudayamato/home_respeaker.git

echo "ホームディレクトリにhome_respeaker,ttrを作成しました。"

exit 1
