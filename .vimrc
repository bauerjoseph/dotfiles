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

" apt-vim package manager stuff
execute pathogen#infect()
call pathogen#helptags()

