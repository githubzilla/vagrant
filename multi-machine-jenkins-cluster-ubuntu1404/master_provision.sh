#! /bin/bash
#change apt source to be inside China to speed up apt
#sudo mv /etc/apt/sources.list /etc/apt/sources.list.old
#sudo cp /vagrant/sources.list /etc/apt/sources.list
sudo apt-get update

#prepare for jenkins installation
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update

#install openjdk
#sudo apt-get -y install default-jdk
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get -y install openjdk-8-jdk
sudo update-alternatives --config java
sudo update-alternatives --config javac

#install jenkins
sudo apt-get -y install jenkins

sudo apt-get -y install git