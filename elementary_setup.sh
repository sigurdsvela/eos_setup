sudo apt update
sudo apt upgrade

echo "Installing General"

## Git	
sudo apt install git -y

## add-apt-repository
sudo apt install software-properties-common -y

## Add 32bit
sudo dpkg --add-architecture i386

sudo apt install gnome-disk-utility -y

sudo apt install openssh-server openssh-client -y
sudo system enable ssh
ssh-keygen


## Nvidia Drivers
echo "Installing Graphics drivers"
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-driver-440 libnvidia-gl-440 libnvidia-gl-440:i386 -y
sudo apt install libvulkan1 libvulkan1:i386 -y

## Firefox
echo "Installing Firefox"
sudo apt install firefox -y

## Steam
echo "Installing Steam"
sudo add-apt-repository multiverse
sudo apt update
sudo apt install steam -y

## Wine
echo "Installing Wine"
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt install --install-recommends winehq-stable -y

## Lutris
echo "Installing Lutris"
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt-get update
sudo apt-get install lutris


## Snap Packages
sudo apt install snapd
sudo snap install spotify
sudo snap install --classic code
sudo apt install snapd


## Dropbox
sudo echo "deb [arch=i386,amd64] http://linux.dropbox.com/ubuntu bionic main" > /etc/apt/sources.list.d/dropbox.list
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
sudo apt update
sudo apt install dropbox python-gpgme -y
dropbox start