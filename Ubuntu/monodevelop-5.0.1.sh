#!/bin/bash

# Requires: mono

install_monodevelop() {
  # Variables
  local VERSION="monodevelop-5.0.1.3"

  # Help packages
  sudo apt-get -y install libglade2.0-cil-dev
  sudo apt-get -y install gnome-sharp2
  sudo apt-get -y install autoconf

  # Gacutil
  cd /usr/lib/cli
  sudo gacutil -i glib-sharp-2.0/glib-sharp.dll
  sudo gacutil -i atk-sharp-2.0/atk-sharp.dll
  sudo gacutil -i gdk-sharp-2.0/gdk-sharp.dll
  sudo gacutil -i gtk-sharp-2.0/gtk-sharp.dll
  sudo gacutil -i glade-sharp-2.0/glade-sharp.dll
  sudo gacutil -i pango-sharp-2.0/pango-sharp.dll
  sudo gacutil -i gnome-sharp-2.24/gnome-sharp.dll
  sudo gacutil -i gconf-sharp-2.0/gconf-sharp.dll
  sudo gacutil -i gnome-vfs-sharp-2.0/gnome-vfs-sharp.dll
  cd -

  # Download
  git clone https://github.com/mono/monodevelop.git

  # Build and install
  cd monodevelop
  git checkout "${VERSION}"
  git submodule update --init --recursive
  ./configure --prefix=`pkg-config --variable=prefix mono` --profile=stable
  make
  sudo make install
  cd ..

  # Clear
  sudo rm -rf monodevelop
}

install_monodevelop