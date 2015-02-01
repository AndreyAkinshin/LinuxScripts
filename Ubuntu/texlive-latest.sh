#!/bin/bash

install_texlive() {
  sudo apt-get -y install texlive-latex-base
  sudo apt-get -y install texlive-latex-extra
  sudo apt-get -y install texlive-latex-recommended
  sudo apt-get -y install texlive-xetex
  sudo apt-get -y install texlive-fonts-recommended
  sudo apt-get -y install latexmk
}

install_texlive