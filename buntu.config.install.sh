#!/bin/sh
#
#script to reinstall default software on ma's laptop
#
# install aptitude & external ppa's
sudo apt-get install aptitude
sudo add-apt-repository ppa:atareao/atareao #my-weather-indicator
sudo add-apt-repository ppa:gezakovacs/ppa #unetbootin
# this one only for 13.04, change raring to new animal!
sudo sh -c "echo 'deb http://archive.canonical.com/ubuntu/ raring partner' >> /etc/apt/sources.list.d/canonical_partner.list" #non free repositories for skype, for common users

# update sources & upgrade packages
sudo aptitude update
sudo aptitude upgrade

# install new software
sudo aptitude install vim dvtm elinks p7zip-full preload powertop htop nmap vlc skype calibre my-weather-indicator unetbootin laptop-mode-tools indicator-cpufreq hibernate pm-utils git

# install teamviewer from deb packet
wget http://download.teamviewer.com/download/teamviewer_linux_x64.deb
sudo dpkg -i teamviewer_linux_x64.deb
sudo apt-get install -f # to get the missing dependecies, generally a bunch of them...

# edit config files 
sudo echo "vm.swappiness=10" >> /etc/sysctl.conf


