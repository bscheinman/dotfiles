set tabstop=8
set shiftwidth=8
set noexpandtab
set smarttab
set autoindent
set smartindent
syntax on

if has('gui_running')
	colorscheme molokai
	set lines=999 columns=999

	nmap <C-tab> :tabnext<cr>
	imap <C-tab> <ESC>:tabnext<cr>i
	nmap <C-S-tab> :tabprevious<cr>
	imap <C-S-tab> <ESC>:tabprevious<cr>i
else
	set t_Co=256
	colorscheme zellner

	nmap <silent><C-l> gt
	imap <silent><C-l> <ESC>gti
	nmap <silent><C-h> gT
	imap <silent><C-h> <ESC>gTi
endif

set colorcolumn=81
set laststatus=2
set number
set scrolloff=8

let mapleader = "'"

nmap <silent><leader>h <C-w>h
nmap <silent><leader>j <C-w>j
nmap <silent><leader>k <C-w>k
nmap <silent><leader>l <C-w>l

" half page up/down
nmap <silent>J Lzz
nmap <silent>K Hzz
nmap <leader>r :%s/<C-r><C-w>/

" move screen single line up/down
nmap <silent><C-j> <C-e>
nmap <silent><C-k> <C-y>
imap <silent><C-j> <ESC><C-y>a
imap <silent><C-k> <ESC><C-e>a

" todo lists
nmap <silent><leader>n Go!!<Space>
nmap <silent><leader>x :s/^!!/xx<CR>:w<CR>

nmap <silent><leader>z :NERDTreeToggle<CR>
nmap <leader>a :cscope find g 

set wildignore+=*.o

let g:gitgutter_max_signs=10000

command W w
command Q q

autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab

execute pathogen#infect()
