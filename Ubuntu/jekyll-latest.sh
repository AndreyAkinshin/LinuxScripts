#!/bin/bash

install_jekyll() {
  sudo apt-get update
  sudo apt-get -y install ruby ruby-dev make gcc nodejs
  sudo gem install jekyll --no-rdoc --no-ri
  jekyll -v
}

install_jekyll