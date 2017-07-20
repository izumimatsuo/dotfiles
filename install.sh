#!/bin/sh

for f in .??*
do
    [ $f = ".git" ] && continue

    if [ `uname` = "Windows_NT" ]; then
        cp ~/dotfiles/$f ~/$f
        continue
    fi

    ln -sfv ~/dotfiles/$f ~/$f
done
