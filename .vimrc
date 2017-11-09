call pathogen#infect()
syntax on
set t_Co=256
set hlsearch
colorscheme cthulhuology
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set nocompatible 
set nobackup
filetype plugin on 
syntax on
set nu
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
let g:syntastic_c_include_dirs = [ '../include', 'include', '/usr/include', '/usr/local/include' ]
let g:gitgutter_realtime=1

vmap <C-C> :!xsel -f <CR>
map <C-V> :-1r !xsel -o <CR>
imap <C-V> <C-O>:-1r !xsel -o <CR>

set ff=unix
filetype indent off






