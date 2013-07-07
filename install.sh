#! /bin/bash

cur_dir=`pwd`

# Emacs
[[ -d $HOME/.emacs.d ]] && mv $HOME/.emacs.d $HOME/.emacs.d-bkp
[[ -f $HOME/.emacs ]] && mv $HOME/.emacs $HOME/.emacs-bkp
ln -s $cur_dir/emacs/.emacs.d/ ~/.emacs.d

# Git
[[ -f $HOME/.gitconfig ]] && mv $HOME/.gitconfig $HOME/.gitconfig-bkp
ln -s $cur_dir/git/.gitconfig ~/.gitconfig

# Awesome
[[ -f $HOME/.config/awesome/rc.lua ]] && mv $HOME/.config/awesome/rc.lua $HOME/.config/awesome/rc.lua-bkp
mkdir -p ~/.config/awesome
ln -s $cur_dir/awesome/rc.lua ~/.config/awesome/rc.lua

mkdir -p $HOME/.bootstrapped/ && touch $HOME/.bootstrapped/dotfiles
