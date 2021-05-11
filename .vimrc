:set relativenumber
:set number
:syntax on
:set updatetime=100

:set ignorecase
:set smartcase

:set foldmethod=indent
:set foldlevel=99

set encoding=utf-8

highlight Comment cterm=italic gui=italic

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

" Rules for org files
autocmd BufRead,BufNewFile *.org setlocal wrap linebreak nolist spell textwidth=80

" Rules for gemini files
autocmd BufRead,BufNewFile *.gmi setlocal wrap nolist spell

" Rules for c files
" autocmd BufRead,BufNewFile *.c setlocal ts=8 shiftwidth=8 softtabstop=8

" Use hardtabs instead of spaces for make files
autocmd Filetype make       setlocal noexpandtab

" Rules for Latex files
autocmd BufRead,BufNewFile *.tex setlocal wrap linebreak nolist tw=80

" Rules for Markdown files
autocmd BufRead,BufNewFile *.md setlocal wrap linebreak nolist spell textwidth=80 foldmethod=syntax

" Highlighting for ejs files
au BufNewFile,BufRead *.ejs set filetype=html

" NerdTree mapped to f5
" map <F5> :NERDTree<cr><c-w>p
map <F5> :!cargo run<cr>
" map <F5> :!make<cr>
map <F6> :!RUST_BACKTRACE=1 cargo run<cr>

:nnoremap <space> za

" Plugins that are not mentioned here:
" Status bar at bottom of screen: https://github.com/vim-airline/vim-airline

" This is to help tell the difference between insert mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" FZF to fuzzy find files
map <C-p> :FZF<CR>

let g:markdown_folding = 1
