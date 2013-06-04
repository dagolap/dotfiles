#! /bin/bash

dir = `pwd`

# Emacs
[[ -d $HOME/.emacs.d ]] && mv $HOME/.emacs.d-bkp
[[ -f $HOME/.emacs ]] && mv $HOME/.emacs-bkp
ln -s `pwd`"/emacs/.emacs.d/" ~/.emacs.d
