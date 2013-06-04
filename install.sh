#! /bin/bash

cur_dir=`pwd`

# Emacs
[[ -d $HOME/.emacs.d ]] && mv $HOME/.emacs.d $HOME/.emacs.d-bkp
[[ -f $HOME/.emacs ]] && mv $HOME/.emacs $HOME/.emacs-bkp
ln -s $cur_dir/emacs/.emacs.d/ ~/.emacs.d

# Git
[[ -f $HOME/.gitconfig ]] && mv $HOME/.gitconfig $HOME/.gitconfig-bkp
ln -s $cur_dir/git/.gitconfig ~/.gitconfig

mkdir -p $HOME/.bootstrapped/ && touch $HOME/.bootstrapped/dotfiles
