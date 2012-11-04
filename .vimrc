set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
syntax on

:nmap <C-tab> :tabnext<cr>
:imap <C-tab> <ESC>:tabnext<cr>i
:nmap <C-S-tab> :tabprevious<cr>
:imap <C-S-tab> <ESC>:tabprevious<cr>i
:nmap <C-t> :tabnew<cr>
:imap <C-t> <ESC>:tabnew<cr>i

:nmap <silent>,h <C-w>h
:nmap <silent>,j <C-w>j
:nmap <silent>,k <C-w>k
:nmap <silent>,l <C-w>l

:command W w
:command Q q
