#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/ctags ~/.ctags
ln -s $DIR/git-completion.sh ~/.git-completion.sh
ln -s $DIR/git-prompt.sh ~/.git-prompt.sh

read -e -p "Enter configuration name (eg: work-mac): " CONFIG_NAME
. $DIR/$CONFIG_NAME/setup.sh
