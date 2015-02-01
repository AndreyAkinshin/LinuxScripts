#!/bin/bash

install_r() {
  # Install
  sudo add-apt-repository -y ppa:marutter/rrutter
  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get -y install r-base
  sudo apt-get -y install r-base-dev

  # devtools
  sudo apt-get -y build-dep libcurl4-gnutls-dev # curl
  sudo apt-get -y install libcurl4-gnutls-dev   # curl
  sudo apt-get update
  sudo apt-get -y install libglu1-mesa-dev
  sudo apt-get -y install xorg-dev
  sudo Rscript -e "install.packages('devtools', repos='http://cran.rstudio.com/')"

  # colorout
  sudo Rscript -e "library('devtools');install_github('jalvesaq/colorout')"

  # Rprofile
  echo "library(colorout)" | sudo tee -a /etc/R/Rprofile.site > /dev/null
  echo "local({r<-getOption('repos');r['CRAN']<-'http://cran.rstudio.com';options(repos=r)})" | sudo tee -a /etc/R/Rprofile.site > /dev/null
}

install_r