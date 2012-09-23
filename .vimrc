set nocompatible
set noexrc
set background=dark
set cpoptions=aABceFsmq

" Pathogen
filetype off "Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() "generates helptags for everything in 'runtimepath'
filetype plugin indent on

" Pretty {
set go=ce
" colorscheme vividchalk
colorscheme solarized
syntax on
" }

" mappings {
nnoremap ; :
let mapleader=","
nnoremap <S-space> <C-y>
nnoremap <space> <C-e>
map <esc>t <esc>:NERDTree<CR>
map <left> <esc><C-w>h
map <up> <esc><C-w>k
map <right> <esc><C-w>l
map <down> <esc><C-w>j
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
set pastetoggle=<F2>
nnoremap j gj
nnoremap k gk
"use arrow keys to navigate windows/buffers
nmap <silent> ,/ :nohlsearch<CR>

map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>s :FufTag<CR>
" }


" Vim Behaviours {
set hidden          "hides buffers instead of closing (forcing save)
"set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
set nowrap          " don't wrap lines
set expandtab
set tabstop=4       " a tab is four spaces
set backspace=indent,eol,start
" allow backspacing over everything in insert mode
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set nu              " always <CR>show line numbers
set shiftwidth=4    " number of spaces to use for autoindenting
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
"set showmatch       " show matching parenthesis
set ignorecase      " ignore case when searching
set smartcase       " ignore case if searchpattern is all lowercase, case-sensitive otherwise
set smarttab        " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set nobackup
set directory=~/.vim/tmp
set fileformats=unix,mac,dos
set mouse=a
set history=1000    " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildmenu
set wildignore=*.swp
set title           " change the terminal's title
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " show tabs and trailing
set makeprg=rake " set make to rake

autocmd BufEnter * :syntax sync fromstart

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
" }

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
