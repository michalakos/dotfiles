git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh}/themes/powerlevel10k

sudo apt upgrade -y
sudo apt autoremove -y

cp .gitconfig ${HOME}
cp .p10k.zsh ${HOME}
cp .tmux.conf ${HOME}
cp .zshrc ${HOME}
cp .vimrc ${HOME}
source ${HOME}/.zshrc
