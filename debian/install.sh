#!/usr/bin/env bash

# Ask for su password up front
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo apt-get install -y make xsel curl

sudo apt-get install -y git

sudo apt-get install ttf-bitstream-vera

# ruby-install
wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz
tar -xzvf ruby-install-0.6.0.tar.gz
cd ruby-install-0.6.0/
sudo make install
rm ruby-install-0.6.0.tar.gz 

# chruby
wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
rm chruby-0.3.9.tar.gz

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

