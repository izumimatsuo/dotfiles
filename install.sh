#!/bin/sh

for f in .??*
do
    [ $f = ".git" ] && continue

    ln -sfv ~/dotfiles/$f ~/$f
done
