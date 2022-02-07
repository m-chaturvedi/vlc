


sudo apt-get install libxcb-shm0-dev libxcb-xv0-dev libxcb-keysyms1-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev
echo "deb http://www.deb-multimedia.org bullseye main" >> /etc/apt/sources.list
sudo apt-get install deb-multimedia-keyring
sudo apt-get install liblivemedia-dev libqt5quickwidgets5 libqt5quickcontrols2-5

./configure --prefix=$PWD/install --disable-a52 --enable-live555 --disable-qt --disable-lua

