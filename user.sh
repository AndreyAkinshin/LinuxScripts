#!/bin/bash

initial_user() {
  # bashrc
  sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' ~/.bashrc
  cp .bashrc-custom ~/.bashrc-custom
  cp .gitconfig ~/.gitconfig
  echo "source ~/.bashrc-custom" >> ~/.bashrc
}

initial_user