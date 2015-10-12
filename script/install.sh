# install the TU Dresden Cloud (prerequisite: install ownCloud and login)
mkdir ~/cloud
encfs ~/ownCloud/encrypted ~/cloud

# create the link to the scripts in homedir
ln --symbolic ~/.dotfiles/script ~/script
