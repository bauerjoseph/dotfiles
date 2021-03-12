set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" vim-plug plugins
call plug#begin('~/.vim/plugged')

" Plug 'vim-airline/vim-airline' " Does not work with tmux
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki'
" Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
" Plug 'dense-analysis/ale'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'rust-lang/rust.vim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'vimwiki/vimwiki'

cal plug#end()
