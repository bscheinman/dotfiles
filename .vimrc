set tabstop=8
set shiftwidth=8
set noexpandtab
set smarttab
set autoindent
set smartindent
syntax on

:set t_Co=256
:colorscheme zellner
:set colorcolumn=80
:set laststatus=2

:let mapleader = "'"

:nmap <C-tab> :tabnext<cr>
:imap <C-tab> <ESC>:tabnext<cr>i
:nmap <C-S-tab> :tabprevious<cr>
:imap <C-S-tab> <ESC>:tabprevious<cr>i
":nmap <C-t> :tabnew<cr>
":imap <C-t> <ESC>:tabnew<cr>i

:nmap <silent><leader>h <C-w>h
:nmap <silent><leader>j <C-w>j
:nmap <silent><leader>k <C-w>k
:nmap <silent><leader>l <C-w>l

:nmap <silent><leader>z :NERDTreeToggle<cr>
:nmap <leader>a :cscope find g 

set wildignore+=*.o

:command W w
:command Q q

autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab

execute pathogen#infect()
