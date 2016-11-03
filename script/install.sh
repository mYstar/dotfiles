sudo ~/.dotfiles/script/install_sudo.sh

## installation
~/.dotfiles/script/bootstrap

pip install --upgrade neovim
pip3 install --upgrade neovim

mkdir ~/.ssh
ssh-keygen -t rsa -b 4096 -C "eric_st@web.de"
ssh-add ~/.ssh/id_rsa

chsh -s /usr/bin/zsh
