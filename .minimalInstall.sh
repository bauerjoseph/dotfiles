# The following are recommendations that I found online
# https://www.lovelinux-skill.ooo/2018/07/the-ultimate-minimal-ubuntu.html
sudo apt-get -y install i3 ubuntu-drivers-common mesa-utils mesa-utils-extra compton xorg xserver-xorg nautilus volumeicon-alsa ffmpeg software-properties-common network-manager-gnome autoconf make gcc

sudo apt-get -y install vim curl firefox feh pulseaudio sakura pavucontrol

# install snap and any snaps that I use
# sudo apt-get -y install snapd
# sudo snap install discord

# Install vim package manager and a few packages I like
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# polybar
sudo apt install build-essential git cmake cmake-data pkg-config libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
mkdir ~/.source
cd ~/.source
git clone --recursive https://github.com/jaagr/polybar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
cd ~

# rofi
sudo apt-get install bison flex 
sudo apt-get install libxkbcommon-dev 
sudo apt-get install libxkbcommon-x11-dev 
sudo apt-get install libxcb-randr0-dev 
sudo apt-get install libxcb-xinerama0-dev 
sudo apt-get install libxcb-xrm-dev 
sudo apt-get install libcogl-pango-dev 
sudo apt-get install libstartup-notification0-dev 
sudo apt-get install librsvg2-dev 
cd ~/.source
git clone https://github.com/DaveDavenport/rofi.git
cd rofi
git submodule udpate --init
autoreconf -i
mkdir build
cd build
../configure --disable-check
make
sudo make install

