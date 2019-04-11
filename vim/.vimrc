" This must be first, because it changes other options as a side effect.
set nocompatible

" Download vim-plug if not already installed
if has('unix')
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
  endif
elseif has('win32')
  if empty(glob('~/vimfiles/autoload/plug.vim'))
    echom "Install vim-plug!"
  endif
endif

" ==============================================================================
" Vim-Plug
" ==============================================================================
call plug#begin('~/.vim/plugged')

" Main plugins
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme', { 'do': './install.py --all' }
" Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'bronson/vim-trailing-whitespace'

" Formatters and linters
Plug 'godlygeek/tabular'
" Plug 'scrooloose/syntastic'

" Interface
Plug 'bling/vim-airline' ", { 'do': 'apt-get install fonts-powerline -y' }
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Themes
" Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'crusoexia/vim-monokai'

" Languages support
" Support all popular languages (syntax, ident and smth. else)
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'

" GIT
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Iteractive scratchpad
Plug 'metakirby5/codi.vim'

" Markdown previw support
Plug 'shime/vim-livedown'

call plug#end()

" ==============================================================================
" Native VIM settings
" ==============================================================================
filetype plugin indent on
syntax on
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
set textwidth=100
set colorcolumn=+1
set formatoptions-=t		" Don't auto-break long lines (re-enable this for prose)

set listchars=tab:»\ 		" hidden chars
au BufWinEnter * hi SpecialKey ctermfg=darkgray guifg=darkgray

set ignorecase				" search with ignore case
set smartcase
set hlsearch				" highlight search result
set incsearch				" do search when typing
set autoindent				" same indent on next line
set smartindent
set showmatch
set hidden					" hidden unsaved buffer"
set scrolloff=8
set showcmd					" Show incomplete command in status bar
" set novisualbell
" set noerrorbells
set wildmenu				" vim commands autocompletion
set wildmode=list:longest,full

set mouse=a					" can use mouse like other editors
set t_Co=256
set background=dark
silent! colorscheme monokai

" set formatoptions-=cro	" don't auto insert comment on new line (not work)

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Fix 256color terminals bg color
" Ref: https://askubuntu.com/questions/739620/vim-theme-showing-up-strange-in-tmux
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" ==============================================================================
" COmmands
" ==============================================================================
command W write

" ==============================================================================
" Mappings
" ==============================================================================
let g:mapleader = ','

" Hide search highlight
nmap <leader>nh :set nohlsearch<CR>
nmap <leader>hh :set hlsearch!<CR>

" Map ctrl-movement keys to window switching
noremap <C-k> <C-w><Up>
noremap <C-j> <C-w><Down>
noremap <C-l> <C-w><Right>
noremap <C-h> <C-w><Left>

map Q <nop>

" Disable arrows (coz I use it)
map <Left> <nop>
map <Right> <nop>
map <Up> <nop>
map <Down> <nop>

" Buffers navigation maps

" Edit .vimrc
if has('nvim')
	map <leader>vl :e ~/.vimrc<CR>
else
	map <leader>vl :e $MYVIMRC<CR>
endif
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

	" Primary clipboard (Paste on MouseWheel) [unnamed]
	" noremap <Leader>Y "*y
	" noremap <Leader>P "*p
endif

" Save buffers undo/redo history
" if v:version >= 700
" set history=64
" set undolevels=128
" set undodir=~/.vim/undodir/
" set undofile
" set undoreload=1000
" endif

" ==============================================================================
" NERDTree
" ==============================================================================
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

" ==============================================================================
" WebDevIcons
" ==============================================================================
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_ctrlp = 1

" Refresh icons on resource vimrc
if exists("b:NERDTree") && exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

" ==============================================================================
" NerdCommenter
" ==============================================================================
let g:NERDSpaceDelims = 1

" NERDCommenter patch for VUE
let g:ft = ''
fu! NERDCommenter_before()
	if &ft == 'vue'
		let g:ft = 'vue'
		let stack = synstack(line('.'), col('.'))
		if len(stack) > 0
			let syn = synIDattr((stack)[0], 'name')
			if len(syn) > 0
				let syn = tolower(syn)
				exe 'setf '.syn
			endif
		endif
	endif
endfu
fu! NERDCommenter_after()
	if g:ft == 'vue'
		setf vue
		let g:ft = ''
	endif
endfu

" ==============================================================================
" Airline options
" ==============================================================================
let g:airline_powerline_fonts=1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
let g:airline_theme='onedark'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" ==============================================================================
" Tabular plugin
" ==============================================================================
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>

	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>

	" <bar> is |
	nmap <Leader>a<bar> :Tabularize /<bar><CR>
	vmap <Leader>a<bar> :Tabularize /<bar><CR>
endif

" ==============================================================================
" Easymotion plugin
" ==============================================================================
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap <leader>s <Plug>(easymotion-overwin-f2)
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

