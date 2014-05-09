#!/bin/bash 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/bash_profile ~/.bash_profile
ln -s $DIR/gitconfig ~/.gitconfig
ln -s $DIR/gitignore_global ~/.gitignore_global
