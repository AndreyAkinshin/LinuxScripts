#!/bin/bash

# Requires: mono-mcs, monodevelop

install_emgucv() {
  # Dependences
  sudo apt-get -y install build-essential
  sudo apt-get -y install libtiff5-dev
  sudo apt-get -y install libgeotiff-dev
  sudo apt-get -y install libgtk2.0-dev
  sudo apt-get -y install libgstreamer0.10-dev
  sudo apt-get -y install libavcodec-dev
  sudo apt-get -y install libswscale-dev
  sudo apt-get -y install libavformat-dev
  sudo apt-get -y install libopenexr-dev
  sudo apt-get -y install libjasper-dev
  sudo apt-get -y install libdc1394-22-dev
  sudo apt-get -y install libv4l-dev
  sudo apt-get -y install libqt4-opengl-dev
  sudo apt-get -y install libeigen2-dev
  sudo apt-get -y install libtbb-dev
  sudo apt-get -y install libtesseract-dev
  sudo apt-get -y install cmake-curses-gui
  sudo apt-get -y install git

  # Download and build
  git clone git://git.code.sf.net/p/emgucv/code emgucv
  cd emgucv
  git checkout 2.4.2
  git submodule update --init --recursive
  cmake -DBUILD_TESTS:BOOL=FALSE -DBUILD_DOCS:BOOL=FALSE -DWITH_TBB:BOOL=TRUE -DWITH_CUDA:BOOL=FALSE -DWITH_OPENCL:BOOL=FALSE .
  make
  cd ..
}

install_emgucv