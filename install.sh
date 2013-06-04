#! /bin/bash

cur_dir=`pwd`

# Emacs
[[ -d $HOME/.emacs.d ]] && mv $HOME/.emacs.d $HOME/.emacs.d-bkp
[[ -f $HOME/.emacs ]] && mv $HOME/.emacs $HOME/.emacs-bkp
ln -s $cur_dir/emacs/.emacs.d/ ~/.emacs.d
