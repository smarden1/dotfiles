#!/bin/bash
# create symbolic links for all dot files in this directory
# if file already exists, make a backup

files=`find . -name ".*" -maxdepth 1 | grep -v "\\.$" | grep -v "git$"`
backup_directory=backup_`date "+%Y_%m_%d%n"`

mkdir -p $backup_directory

for file in $files; do
	[ -f ~/$file ] &&
		echo "$file already exists. moving to backup directory" &&
		mv ~/$file $backup_directory/$file
	ln -s `pwd`/$file  ~/$file
done

# link gitignore to the gitignore file
git config --global core.excludesfile `pwd`/gitignore