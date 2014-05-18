#!/bin/bash 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

files=(bash_profile gitconfig gitignore_global git-completion.sh git-prompt.sh)
for i in "${files[@]}"
do
	echo "Creating symbolic link: ~/.${i} -> ${DIR}/${i}"
    ln -s $DIR/$i ~/.$i
done
