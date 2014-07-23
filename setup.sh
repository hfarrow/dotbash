#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ~/.config

echo "Setting up common configuration."
files=(ctags config/powerline)
for i in "${files[@]}"
do
	echo "Creating symbolic link: ~/.${i} -> ${DIR}/${i}"
    ln -s $DIR/$i ~/.$i
done

echo ""
echo "----------------------------------------------------------------------------------------"
echo "Please select a configuration by entering the configuration number and pressing enter: "
echo "----------------------------------------------------------------------------------------"
select CONFIG_NAME in home-mint work-mac other
do
    case $CONFIG_NAME in 
        "other")
            echo ""
            read -e -p "Enter configuration name (eg: work-mac): " CONFIG_NAME
            ;;
    esac

    echo ""
    echo "Setting up [${CONFIG_NAME}]."
    . $DIR/$CONFIG_NAME/setup.sh
    exit
done
