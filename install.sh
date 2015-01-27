#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ ! -e ~/.vimrc ]] ; then
  ln -s ${DIR}/vimrc ~/.vimrc
fi

if [[ ! -e ~/.vim ]] ; then
  ln -s ${DIR}/vim ~/.vim
fi
