#!/bin/bash

install_mono() {
  # Variables
  local NAME="mono-3.12.0"

  # Compiler
  sudo apt-get -y install g++

  # Complete mono version
  sudo apt-get -y install mono-complete

  # Download
  wget "http://download.mono-project.com/sources/mono/${NAME}.tar.bz2"

  # Build and install
  tar -xjvf "${NAME}.tar.bz2"
  cd "${NAME}"
  ./configure --prefix=/usr/local
  make
  sudo make install
  cd ..

  # Clear
  rm "${NAME}.tar.bz2"
  rm -rf "${NAME}"
}

install_mono