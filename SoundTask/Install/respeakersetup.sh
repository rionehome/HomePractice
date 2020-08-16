#!/bin/sh
cd
sudo apt install python-pip
pip install pyusb
git clone https://matsudayamato@bitbucket.org/matsudayamato/home_respeaker.git
cd /etc/udev/rules.d/
sudo touch 10-any_name_is_ok.rules 10-any_name_is_ok.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="2886", ATTR{idProduct}=="0018", MODE="0666", GROUP="plugdev"' | sudo tee 10-any_name_is_ok.rules
username=$(whoami)
sudo gpasswd -a $username plugdev
sudo chmod a+r /etc/udev/rules.d/10-any_name_is_ok.rules
sudo udevadm control --reload-rules
udevadm trigger
echo '本体を再起動します'
sudo reboot
