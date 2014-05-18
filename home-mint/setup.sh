#!/bin/bash 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

files=(bashrc)
for i in "${files[@]}"
do
	echo "Creating symbolic link: ~/.${i} -> ${DIR}/${i}"
    ln -s $DIR/$i ~/.$i
done
