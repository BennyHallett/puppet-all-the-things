#! /bin/bash

sudo puppet module install puppetlabs-stdlib --force
sudo puppet module install maestrodev-rvm --force
#sudo puppet module install puppet-pathogen --git=https://github.com/bennyhallett/puppet-pathogen.git --force
sudo puppet module install puppetlabs-java --force
sudo puppet module install runthebusiness-eclipse --force
sudo puppet module install maestrodev-wget --force
sudo puppet module install maestrodev-android --force
