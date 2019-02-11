#!/bin/bash
# clean previous installation
echo === Clean previous installation
rm ~/.vimrc
rm -rf ~/.vim
echo
# copy .vimrc file
echo === Copying .vimrc file ===
cp resources/.vimrc ~/
echo
# install pathogne
echo === Installing pathogen ===
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
echo
# install plugins
echo === Installing plugins ===
echo
cd ~/.vim/bundle
git clone git://github.com/wincent/Command-T.git
cd Command-T
rake make
cd ..
echo
git clone git://github.com/Shougo/neocomplcache.git
echo
git clone git://github.com/Shougo/neosnippet.git
echo
git clone git://github.com/scrooloose/nerdtree.git
echo
git clone git://github.com/tpope/vim-markdown.git
echo
git clone git://github.com/tpope/vim-vividchalk.git
echo
git clone git://github.com/oguzbilgic/sexy-railscasts-theme.git
echo
git clone git://github.com/morhetz/gruvbox.git
