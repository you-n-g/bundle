#!/bin/bash

DIR="$( cd "$(dirname "$0")" ; pwd -P )"

cd $DIR

for d in `find . -maxdepth 1 -type d  | grep -v '.git\$' | grep -v '^.$'` ; do
    cd $DIR/$d
    git pull
    git checkout master
done



# update YouCompleteMe
cd  ~/.vim/bundle/YouCompleteMe/
git submodule update --init --recursive
bash ./install.sh  --clang-completer
cp  ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py


# update command-T
cd ~/.vim/bundle/command-t/ruby/command-t/
ruby extconf.rb && make


