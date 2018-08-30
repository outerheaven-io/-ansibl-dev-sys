#!/bin/bash
CHECKSHELL=/bin/zsh

#This means that you cant have custom .zshrc, need to edit this at some  point
if [ ! -f $HOME/.zshrc ] | [ "$(md5sum /etc/zshrc.ansible | cut -d' ' -f 1)" != "$(md5sum $HOME/.zshrc | cut -d' ' -f 1)"  ]; then
    cp /etc/zshrc.ansible $HOME/.zshrc
fi

if [ "$CHECKSHELL" != "$(getent passwd $USER | cut -d: -f7)" ]; then
    sudo chsh -s $CHECKSHELL $USER
    /bin/zsh
fi