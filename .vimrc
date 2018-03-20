:set number

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


autocmd BufRead,BufNewFile *.md setlocal spell wrap linebreak nolist

<<<<<<< HEAD
" NerdTree mapped to f5
map <F5> :NERDTree<cr><c-w>p

" Pathogen package manager stuff
execute pathogen#infect()
call pathogen#helptags()
=======
" apt-vim package manager stuff
execute pathogen#infect()
call pathogen#helptags()

>>>>>>> 5e1d1d5e2fe2d155f25a20456e29ab94ead1fef2
