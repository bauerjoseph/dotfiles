:set relativenumber
:set number
:syntax on

:set ignorecase
:set smartcase

set backupdir=~/.vimbackups//,.

" These next four lines are so that I break the habit of using the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Indetation and spacing rules
:set expandtab
:set ts=4
:set shiftwidth=4
:set softtabstop=4

:set autoindent

" Turn off word wrap
:set wrap!

" Rules for text files
autocmd BufRead,BufNewFile *.txt setlocal wrap linebreak nolist spell textwidth=80

" Rules for c files
autocmd BufRead,BufNewFile *.c setlocal ts=8 shiftwidth=8 softtabstop=8

" Use hardtabs instead of spaces for make files
autocmd Filetype make       setlocal noexpandtab

" Rules for Latex files
autocmd BufRead,BufNewFile *.tex setlocal wrap linebreak nolist tw=80

" Rules for Markdown files
autocmd BufRead,BufNewFile *.md setlocal wrap linebreak nolist spell textwidth=80

" Highlighting for ejs files
au BufNewFile,BufRead *.ejs set filetype=html

" NerdTree mapped to f5
map <F5> :NERDTree<cr><c-w>p

" Pathogen package manager stuff
execute pathogen#infect()
call pathogen#helptags()

" Plugins that are not mentioned here:
" Status bar at bottom of screen: https://github.com/vim-airline/vim-airline

" This is to help tell the difference between insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" FZF to fuzzy find files
map <C-p> :FZF<CR>

" vim-plug plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

cal plug#end()
