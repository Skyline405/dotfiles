" My variables
let g:front_file_types = ['javascript', 'html', 'vue']


call plug#begin('~/.vim/plugged')

" Main plugins
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'terryma/vim-multiple-cursors'

" Formatters and linters
Plug 'godlygeek/tabular'
" Plug 'scrooloose/syntastic'

" Interface 
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'morhetz/gruvbox'
" Plug 'YorickPeterse/happy_hacking.vim'
" Plug 'dikiaap/minimalist'
" Plug 'AlessandroYorba/Sierra'

" HTML
Plug 'mattn/emmet-vim', { 'for': g:front_file_types }
Plug 'valloric/matchtagalways', { 'for': g:front_file_types }

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': g:front_file_types }
Plug 'jelera/vim-javascript-syntax', { 'for': g:front_file_types }
Plug 'gavocanov/vim-js-indent', { 'for': g:front_file_types }
Plug 'othree/es.next.syntax.vim', { 'for': g:front_file_types }
Plug 'maksimr/vim-jsbeautify', { 'for': g:front_file_types }
" Plug 'othree/yajs.vim', { 'for': g:front_file_types }
Plug 'posva/vim-vue', { 'for': 'vue' }

" JSX
Plug 'mxw/vim-jsx', { 'for': g:front_file_types }

" CSS / LESS / Stylus / SASS / SCSS
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less', 'stylus'] }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }

" GIT
Plug 'airblade/vim-gitgutter'

call plug#end()


" Native VIM settings
filetype plugin indent on
syntax on
set nocompatible
set autoread
set number					" show lines numbers
set ruler					" show line number at the bottom bar
set tabstop=4				" tabs size
set shiftwidth=4
set softtabstop=4
set cursorline				" highlight line under cursor
set noswapfile
set nobackup
set encoding=utf-8

set ignorecase				" search with ignore case
set smartcase
set hlsearch				" highlight search result
set incsearch				" do search when typing
set autoindent				" same indent on next line
set smartindent
set showmatch

set mouse=a					" can use mouse like other editors
set t_Co=256
set background=dark
colorscheme gruvbox

set formatoptions-=cro		" don't auto insert comment on new next line

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Mappings
let g:mapleader = ','

" Don't move to next, just highlight and stay here
nnoremap * *N

" Hide search highlight
nmap <leader>nh :set nohlsearch<CR>
nmap <leader>hh :set hlsearch<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Edit .vimrc
map <leader>vl :vsp $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>

"Paste from system clipboard
map <Leader>p :set paste<CR>a<ESC>"*]p:set nopaste<CR>
map <Leader>P :set paste<CR>i<ESC>"*]p:set nopaste<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" NerdCommenter
let g:NERDSpaceDelims = 1

" Airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='deus'

" Emmet 
" let g:user_emmet_mode='a' 

" YouCompleteMe 
noremap <silent> <C-k> :YcmCompleter GoTo<CR>
noremap <silent> <C-i> :YcmCompleter GetType<CR>

" Tabular plugin
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>

	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
endif
