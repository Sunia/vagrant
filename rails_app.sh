#!/bin/bash --login

# Script for deploy rails app.

sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

sudo apt-get -y  install curl

# Install rvm with ruby 1.9.3-p194
curl -sSL https://get.rvm.io | bash -s stable --ruby=2.2.4
echo "RVM with Ruby 2.2.4 has been installed"

 

# To use ruby 2.2.4
rvm use ruby-2.2.4
echo "Ruby 2.2.4 version has used"


gem install bundler

cd /home/vagrant/devops-test

bundle install
echo "Bundle has completed"

# Install git
sudo apt-get install git



