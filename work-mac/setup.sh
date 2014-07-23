#!/bin/bash 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f ~/.subversion/config ]; then
    mv ~/.subversion/config ~/.subversion/config.backup
fi
mkdir -p ~/.subversion/

files=(bash_profile gitconfig gitignore_global git-completion.sh git-prompt.sh subversion/config)
for i in "${files[@]}"
do
	echo "Creating symbolic link: ~/.${i} -> ${DIR}/${i}"
    ln -s $DIR/$i ~/.$i
done

bin_files=(diffmerge svndiffmerge)
for i in "${bin_files[@]}"
do
    echo "Creating symbolic link: /usr/local/bin/${i} -> ${DIR}/${i}"
    ln -s ${DIR}/$i /usr/local/bin/$i
done
