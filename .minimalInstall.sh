# The following are recommendations that I found online
# https://www.lovelinux-skill.ooo/2018/07/the-ultimate-minimal-ubuntu.html
sudo apt-get -y install i3 wicd ubuntu-drivers-common mesa-utils mesa-utils-extra compton xorg xserver-xorg nautilus volumeicon-alsa ffmpeg

sudo apt-get -y install vim curl firefox feh pulseaudio sakura pavucontrol

git config --global user.email "bauerjoseph@protonmail.com"
git config --global user.name "Joseph Bauer"

# install snap and any snaps that I use
sudo apt-get -y install snapd
sudo snap install discord

# Install vim package manager and a few packages I like
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
