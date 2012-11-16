# copy .vimrc file
cp resources/.vimrc ~/
# install pathogne
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
# install plugins
cd ~/.vim/bundle
git clone git://github.com/wincent/Command-T.git
git://github.com/Shougo/neocomplcache.git
git://github.com/scrooloose/nerdtree.git
git://github.com/tpope/vim-haml.git
git://github.com/groenewege/vim-less.git
git://github.com/tpope/vim-markdown.git
git://github.com/tpope/vim-rails.git
git://github.com/tpope/vim-vividchalk.git

