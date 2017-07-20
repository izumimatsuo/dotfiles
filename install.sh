#!/bin/sh

if [ `uname` = "Windows_NT" ]; then
    cmd="cp"
else
    cmd="ln -sfv"
fi

for f in .??*
do
    [ $f = ".git" ] && continue

    script="$cmd ~/dotfiles/$f ~/$f"
    eval $script
done
