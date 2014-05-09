#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/ctags ~/.ctags
ln -s $DIR/git-completion.sh ~/.git-completion.sh
ln -s $DIR/git-prompt.sh ~/.git-prompt.sh

echo "----------------------------------------------------------------------------------------"
echo "Please select a configuration by entering the configuration number and pressing enter: "
echo "----------------------------------------------------------------------------------------"
select CONFIG_NAME in home-mint work-mac
do
    echo "Setting up [${CONFIG_NAME}]."
    . $DIR/$CONFIG_NAME/setup.sh
    exit
done
