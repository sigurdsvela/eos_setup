_USER=$USER
sudo su

cd /usr/src
sudo git clone https://github.com/samba-team/samba
cd samba
git checkout tags/samba-4.12.6 -b samba-4.12.6

./configure --sysconfdir=/etc/samba --systemd-install-services --with-systemddir=/lib/systemd/system --with-shared-modules=idmap_ad --enable-debug --enable-selftest --with-systemd --enable-spotlight --jobs=`nproc --all`
make --jobs=`nproc --all`
make install --jobs=`nproc --all`


su $_USER