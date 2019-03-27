" My variables
let g:front_file_types = ['javascript', 'html', 'vue']
let g:css_file_types = ['css', 'scss', 'sass', 'less', 'stylus']


call plug#begin('~/.vim/plugged')

" Main plugins
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
" Plug 'terryma/vim-multiple-cursors'

" Formatters and linters
Plug 'godlygeek/tabular'
" Plug 'scrooloose/syntastic'

" Interface 
Plug 'bling/vim-airline', { 'do': 'apt-get install fonts-powerline -y' }
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'morhetz/gruvbox'
" Plug 'YorickPeterse/happy_hacking.vim'
" Plug 'dikiaap/minimalist'
" Plug 'AlessandroYorba/Sierra'

" HTML
Plug 'mattn/emmet-vim', { 'for': g:front_file_types + g:css_file_types }
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
Plug 'ap/vim-css-color', { 'for': g:css_file_types  }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax', { 'for': g:css_file_types }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }

" GIT
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

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

" Hide search highlight
nmap <leader>nh :set nohlsearch<CR>
nmap <leader>hh :set hlsearch!<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>



" Edit .vimrc
map <leader>vl :vsp $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>

" Copy/Paste system clipboard
" More info see here:
"	https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim
if has('clipboard')
	" Using system clipboard (unnamed - mouse clip, unnamedplus - Ctrl clip)
	set clipboard=unnamedplus

	" Clipboard (system use: <C-c>/<C-v>) [unnamedplus]
	" noremap <Leader>y "+y
	" noremap <Leader>p "+p
	" noremap <Leader>d "+d

	" Primary clipboard (Paste on MouseWheel) [unnamed]
	" noremap <Leader>Y "*y
	" noremap <Leader>P "*p
endif

" NerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

" NerdCommenter
let g:NERDSpaceDelims = 1

" Airline options
let g:airline_powerline_fonts=1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=0
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Emmet 
" let g:user_emmet_leader_key='<C-Z>'
" let g:user_emmet_mode='a' 

" YouCompleteMe 
" noremap <silent> <C-k> :YcmCompleter GoTo<CR>
" noremap <silent> <C-i> :YcmCompleter GetType<CR>

" Tabular plugin
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>

	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>

	" <bar> is |
	nmap <Leader>a<bar> :Tabularize /<bar><CR>
	vmap <Leader>a<bar> :Tabularize /<bar><CR>
endif
