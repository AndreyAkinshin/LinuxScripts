#!/bin/bash

set_apt_settings() {
  # Colored progress bar in apt
  echo "Dpkg::Progress-Fancy '1';" | sudo tee /etc/apt/apt.conf.d/99progressbar > /dev/null
}

install_packages() {
  # update / upgrade
  sudo apt-get update
  sudo apt-get -y upgrade

  # common
  sudo apt-get -y install vim
  sudo apt-get -y install git
  sudo apt-get -y install htop
  sudo apt-get -y install mc

  # texlive
  sudo apt-get -y install texlive-latex-base
  sudo apt-get -y install texlive-latex-extra
  sudo apt-get -y install texlive-latex-recommended
  sudo apt-get -y install texlive-fonts-recommended
}

set_apt_settings
install_packages