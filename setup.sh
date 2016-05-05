#!/bin/sh
# Original version is created by shoma2da fork by eliz40x
# MIT LICENCE(https://github.com/eliz40x/nvim/blob/master/LICENSE)

echo ""

# Nvim directory
NVIM_DIR="$HOME/.config/nvim"
# Installation directory
INSTALL_DIR="$NVIM_DIR/autoload/plug.vim"

# Checking if the installation directory exists
echo "Install to \"$INSTALL_DIR\"..."
if [ -e "$INSTALL_DIR" ]; then
  echo "\"$INSTALL_DIR\" already exists!"
  exit 1
fi

echo ""

# Checking if the dependent softwear exists
if ! type rsync ; then
  echo 'Please install rsync'
  exit 1
fi

if ! type nvim ; then
  echo 'Please install neovim'
  exit 1
fi

echo ""

# Install plug.vim
echo "Begin fetching plug.vim..."
# curl -fLo "$NVIM_DIR/autoload/plug.vim" --create-dirs \
#   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd $NVIM_DIR
git submodule init
git submodule update
echo "Done."

echo ""
# Install vim plugin
nvim -c PlugInstall -c exit -c exit 

echo "======================="
echo "Complete setup neovim !"
echo "======================="
echo ""
