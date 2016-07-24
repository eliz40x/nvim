#!/bin/sh
# Original version is created by shoma2da fork by eliz40x
# MIT LICENCE(https://github.com/eliz40x/nvim/blob/master/LICENSE)

echo ""

# Nvim directory
NVIM_DIR="$HOME/.config/nvim"

# Checking if the installation directory exists
echo "Install to \"$INSTALL_DIR\"..."
if [ -e "$INSTALL_DIR" ]; then
  echo "\"$INSTALL_DIR\" already exists!"
  exit 1
fi

echo ""

yaourt -S python-neovim ghc stack
sudo pip install neovim
stack install ghc-mod hlint
mkdir source
cd source
git clone git@github.com:itchyny/miv.git
stack install
echo ""

echo ""
# Install vim plugin
miv install
miv list

echo "!!! Complete setup neovim !!!"
echo ""
