#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ ! -e ~/.vimrc ]] ; then
  ln -s ${DIR}/vimrc ~/.vimrc
fi

if [[ ! -e ~/.vim ]] ; then
  ln -s ${DIR}/vim ~/.vim
fi

if [[ ! -e ~/.config/i3 ]] ; then
    mkdir -p ~/.config/i3
fi
if [[ ! -e ~/.config/i3/config ]] ; then
  ln -s ${DIR}/i3_config ~/.config/i3/config
fi

git config --global alias.lg "log --graph --pretty=format:'%C(yellow)%d%Creset %C(cyan)%h%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=short --all"
