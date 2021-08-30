#!/bin/bash

cp -r .config ${HOME}
cp .zshrc ${HOME}
cp .vimrc ${HOME}

sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install git
install tmux
install vim
install wget

sudo apt upgrade -y
sudo apt autoremove -y
