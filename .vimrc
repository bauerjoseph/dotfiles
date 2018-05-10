:set number
:syntax on

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

" Rules for text files
autocmd BufRead,BufNewFile *.txt setlocal spell wrap linebreak nolist

" Rules for Latex files
autocmd BufRead,BufNewFile *.tex setlocal spell wrap linebreak nolist

autocmd BufRead,BufNewFile *.md setlocal spell wrap linebreak nolist

" NerdTree mapped to f5
map <F5> :NERDTree<cr><c-w>p

" Pathogen package manager stuff
execute pathogen#infect()
call pathogen#helptags()

" Plugins that are not mentioned here:
" Status bar at bottom of screen: https://github.com/vim-airline/vim-airline
