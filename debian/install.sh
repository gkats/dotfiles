#!/usr/bin/env bash

# Ask for su password up front
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo apt-get install -y make xsel curl

sudo apt-get install -y git

sudo apt-get install ttf-bitstream-vera

