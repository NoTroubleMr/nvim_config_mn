syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set number
set mouse=a
set clipboard=unnamedplus
set relativenumber
set incsearch
set hlsearch

" Install vim-plug if not found
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
 Plug 'tpope/vim-fugitive'
 Plug 'jiangmiao/auto-pairs'
 Plug 'morhetz/gruvbox'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'preservim/nerdtree'
 Plug 'scrooloose/nerdcommenter'
 Plug 'tpope/vim-surround'
 Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme gruvbox

let g:coc_global_extensions = ['coc-python', 'coc-json', 'coc-yaml']


