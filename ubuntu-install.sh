#!/bin/bash

sudo apt update && sudo apt full-upgrade -y

install() {
  dpkg -s $1 >/dev/null 2>$1 && {
    echo "$1 is already installed."
  } || {
    sudo apt install $1
  }
}

# Basics
cd ~
install git
install tmux
install vim
install wget
install zsh
install curl

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
sh install.sh
