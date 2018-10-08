
sudo apt-get update
#install nvidia, if it is there
#install some needed software
sudo apt-get install terminator git vim gnome-tweak-tool  curl vlc inkscape
setup control key to escape 

#install lastpass
cd ../Downloads/
wget https://download.cloud.lastpass.com/linux/lplinux.tar.bz2
./install_lastpass.sh
#install google-chrome

#install zsh
sudo apt-get install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s "/bin/zsh"

#nstall auto jump
sudo apt-get install autojump
source /usr/share/autojump/autojump.sh on startup
echo '. /usr/share/autojump/autojump.sh' >> ~/.bashrc
echo '. /usr/share/autojump/autojump.sh' >> ~/.zshrc
autojump

#install emacs
git clone https://github.com/emacs-mirror/emacs.git
cd emacs
sudo apt-get install build-essential texinfo libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev gnutls-dev libgtk-3-dev
sudo apt-get install autoconf
sudo ./autogen.sh
./configure
sudo make
sudo make install
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

sudo apt-get install ispell
sudo apt-get install aspell-de
emacsclient -c
emacs --daemon

#install my dotfiles
git clone https://github.com/jawwada/dotfiles.git dotfiles-github
cd
cp dotfiles-github/.spacemacs .
cat -f dotfiles-github/.zshrc .
cp -f dotfiles-github/.zshenv .

#install java scala sbt
sudo apt-get install default-jdk
sudo apt-get install scala
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt

#install R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

 

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
sudo apt-get update
sudo apt-get install r-base


#install spark
first download, then
tar -xvzf spark-2.3.2-bin-hadoop2.7.tgz
sudo mv spark-2.3.2-bin-hadoop2.7 /usr/local/lib
cd /usr/local/lib
mv spark-2.3.2-bin-hadoop2.7 spark
sudo mv spark-2.3.2-bin-hadoop2.7 spark

#install node

curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
sudo apt-get install -y nodejs


#download git work repo and git personal repo

#install bit-top utilities to detect java home, class path and java libs , this helps get spark working
# Install the Apache Bigtop GPG key
wget -O- http://archive.apache.org/dist/bigtop/bigtop-1.1.0/repos/GPG-KEY-bigtop | sudo apt-key add -

# Make sure to grab the repo file:
sudo wget -O /etc/apt/sources.list.d/bigtop-1.1.0.list http://archive.apache.org/dist/bigtop/bigtop-1.1.0/repos/trusty/bigtop.list

# Update the apt cache
sudo apt-get update

# Install bigtop-utils
sudo apt-get install bigtop-utils
