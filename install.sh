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
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
echo
# install plugins
echo === Installing plugins ===
echo
cd ~/.vim/bundle
git clone git://github.com/wincent/Command-T.git
echo
git clone git://github.com/Shougo/neocomplcache.git
echo
git clone git://github.com/Shougo/neosnippet.git
echo
git clone git://github.com/scrooloose/nerdtree.git
echo
git clone git://github.com/tpope/vim-haml.git
echo
git clone git://github.com/groenewege/vim-less.git
echo
git clone git://github.com/tpope/vim-markdown.git
echo
git clone git://github.com/tpope/vim-rails.git
echo
git clone git://github.com/tpope/vim-vividchalk.git
