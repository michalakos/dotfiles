#!/bin/bash

cp -r .config ${HOME}
cp .zshrc ${HOME}
cp .vimrc ${HOME}

sudo apt update && sudo apt full-upgrade -y

install() {
  dpkg -s $1 >/dev/null 2>$1 && {
    echo "$1 is already installed."
  } || {
    sudo apt install $1
  }
}

# Basics
install git
install tmux
install vim
install wget
install zsh
install curl

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh}/themes/powerlevel10k

sudo apt upgrade -y
sudo apt autoremove -y
