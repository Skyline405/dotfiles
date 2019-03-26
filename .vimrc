call plug#begin('~/.vim/plugged')

" Main plugins
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
"Plug 'valloric/youcompleteme'

" Interface 
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'morhetz/gruvbox'
Plug 'dikiaap/minimalist'
Plug 'AlessandroYorba/Sierra'

" HTML
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript'] }
Plug 'valloric/matchtagalways', { 'for': ['javascript','html'] }

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': ['javascript','html','vue'] }
Plug 'jelera/vim-javascript-syntax', { 'for': ['javascript','html','vue'] }
Plug 'gavocanov/vim-js-indent', { 'for': ['javascript','html','vue'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript','html','vue'] }
Plug 'maksimr/vim-jsbeautify', { 'for': ['javascript','html','vue'] }
Plug 'posva/vim-vue', { 'for': 'vue' }

" JSX
Plug 'mxw/vim-jsx', { 'for': ['javascript','html'] }

" CSS / LESS / Stylus / SASS / SCSS
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less', 'stylus']  }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass']  }
Plug 'groenewege/vim-less', { 'for': 'less'  }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss']  }
Plug 'wavded/vim-stylus', { 'for': 'stylus'  }

" GIT
Plug 'airblade/vim-gitgutter'

call plug#end()

" Mappings
map <C-n> :NERDTreeToggle<CR>
let g:mapleader = ','

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Matchtagalways mapping
"nnoremap <leader>% :MtaJumpToOtherTag<cr>

" Edit .vimrc
map <leader>vl :vsp $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>

"Paste from system clipboard
map <Leader>p :set paste<CR>o<ESC>"*]p:set nopaste<CR>

" Emmet options
let g:user_emmet_mode='a' 

" Native VIM settings
set nocompatible
syntax enable
set autoread
set number					" show lines numbers
set ruler					" show line number at the bottom bar
set tabstop=4				" tabs size
set shiftwidth=4
set softtabstop=4
set cursorline
set noswapfile
set nobackup

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set ignorecase
set smartcase
set hlsearch
set incsearch
set autoindent
set smartindent
set showmatch

set t_Co=256
set background=dark
colorscheme gruvbox

" Airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='deus'

" Remap CapsLock to Escape in VIM mode
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Emmet settings
let g:user_emmet_settings = {
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  },
\  'xml' : {
\    'extends' : 'html',
\  },
\  'haml' : {
\    'extends' : 'html',
\  },
\  'vue' : {
\    'extends' : 'html',
\  },
\}
