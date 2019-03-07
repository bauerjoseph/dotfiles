# The following are recommendations that I found online
# https://www.lovelinux-skill.ooo/2018/07/the-ultimate-minimal-ubuntu.html
sudo apt-get -y install i3 ubuntu-drivers-common mesa-utils mesa-utils-extra compton xorg xserver-xorg nautilus volumeicon-alsa ffmpeg software-properties-common network-manager-gnome autoconf make gcc

sudo apt-get -y install vim curl firefox feh pulseaudio sakura pavucontrol

# install snap and any snaps that I use
# sudo apt-get -y install snapd
sudo snap install discord

# Install vim package manager and a few packages I like
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# polybar
# This needs testing
#sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev

#mkdir ~/.polybar
#git clone --branch 3.3 --recursive https://github.com/jaagr/polybar ~/.polybar
#./.polybar/build.sh
