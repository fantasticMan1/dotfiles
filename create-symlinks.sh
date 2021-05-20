# Neovim init.vim
mkdir -p ~/.config/nvim
ln ./init.vim ~/.config/nvim/
ln ./init.vim ~/.vimrc
# - Install Vim-Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
