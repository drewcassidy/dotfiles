set termguicolors

map <Left> <nop>
map <Right> <nop>
map <Up> <nop>
map <Down> <nop>

nnoremap d "_d

set number
set list
set listchars=tab:▸\ ,trail:▝
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus

call plug#begin('~/.config/nvim/plugged')

Plug 'daylerees/colour-schemes', { 'rtp': 'vim/' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ '^V' : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '^S' : 'S',
  \ }
let g:airline_theme='peacock'

colorscheme peacock
hi Visual guibg=#ff5d38 guifg=white gui=none ctermbg=9 ctermfg=15
hi Directory guifg=#26a6a6 gui=bold ctermfg=5
hi NonText guifg=bg
hi VertSplit guibg=#5b5852
set fillchars+=vert:\ 
map <C-n> <plug>NERDTreeTabsToggle<CR>


