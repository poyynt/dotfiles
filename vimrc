" ~/.vim/vimrc
" My vimrc file
" for neovim with vim-plug
" configure neovim init.vim to read this file
" IMPORTANT: read line 19



map <F5> :w <Enter>:!python3 % <Enter>
map <F8> :w <Enter> :!clang++ -std=c++17 % -o %< <Enter> :tabedit term://./%< <Enter>i
map <F12> :w <Enter> :!clang++ -g -std=c++17 --analyze -Xanalyzer -analyzer-output=html -o html-dir -fsanitize=address,undefined -Wall -Wextra -o %< % <Enter> :!./%< <Enter>
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
colorscheme default
set background=light " colors look nicer :)
command Codeforces read ~/.vim/templates/codeforces.cpp " you may wish to change or comment this. Create file ~/.vim/templates/codeforces.cpp or this will trigger an error.


set ttyfast
set title

" no mouse interaction (personal preference)
set mouse=

"Status line
set laststatus=2
set statusline=
set statusline+=%f\ 
set statusline+=[%{strlen(&ft)?&ft:'none'},\ 
set statusline+=%{strlen(&fenc)?&fenc:&enc}]
set statusline+=%=
set statusline+=%-14.(%l,%c%V%)\ %<%P

"Split
set splitbelow
set splitright

"Search
set hlsearch
set incsearch

" Bidirectional text support
set termbidi

" Plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
Plug 'zchee/deoplete-jedi'
" Plug 'zchee/deoplete-clang'
Plug 'alvan/vim-closetag'
Plug 'luochen1990/rainbow'
Plug 'vim-syntastic/syntastic'

call plug#end()

" NERDTree Config
let NERDTreeIgnore = ['\.pyc$', '\~$']

" Airline Config -- Airline: better statusline 
"let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" Deoplete Config (completion)
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('num_processes', 1)
" let g:deoplete#disable_auto_complete = 1 " Don't show completion until C-n
" inoremap <expr> <C-n>  deoplete#manual_complete() " Don't show completion until C-n

" Rainbow Config (different color for different level paranthesis)
let g:rainbow_active = 1

" NERDCommenter Config
let g:NERDSpaceDelims = 1
"  comment with ⌥ + / in normal mode (change according to your preference)
map ÷ <Plug>NERDCommenterToggle

