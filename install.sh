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

if [[ ! -e ~/.local/bin/i3pystatus_config.py ]] ; then
  ln -s ${DIR}/i3pystatus_config.py ~/.local/bin/i3pystatus_config.py
fi

if [[ ! -e ~/.local/bin/fuzzy_lock.sh ]] ; then
  ln -s ${DIR}/fuzzy_lock.sh ~/.local/bin/fuzzy_lock.sh
fi

git config --global alias.lg "log --graph --pretty=format:'%C(yellow)%d%Creset %C(cyan)%h%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=short --all"


# pip3 install git+https://github.com/enkore/i3pystatus.git
# pip3 install colour
# pip3 install netifaces
# pip3 install psutil
# pip3 install basiciw
# pip3 install GeoIP
# pip3 install git+https://github.com/sivel/speedtest-cli.git@modularize-2
# 
# sudo apt install build-essential
# sudo apt install python3-geoip

