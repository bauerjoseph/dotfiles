# The following are recommendations that I found online
# https://www.lovelinux-skill.ooo/2018/07/the-ultimate-minimal-ubuntu.html
sudo apt install i3 wicd ubuntu-drivers-common mesa-utils mesa-utils-extra compton xorg xserver-xorg nautilus volumeicon-alsa

sudo apt-get install git vim curl firefox feh pulseaudio sakura

# Install vim package manager and a few packages I like
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


echo "Installing vim airline"

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

echo "Installing NerdTree"

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
