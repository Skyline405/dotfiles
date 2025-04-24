" ==================================================================================================
" Native VIM/NeoVIM settings
" ==================================================================================================
filetype plugin indent on " turns on file type detection, plugins and indentation
syntax on                 " turn on syntax highlighting
let g:coc_disable_startup_warning = 1
let g:asmsyntax = 'nasm'
set autoread									" auto re-read the file when its changed
set number										" show lines numbers
set ruler											" show line number at the bottom bar
" Ref - https://habr.com/ru/post/64224
set tabstop=2									" tabs size
set shiftwidth=2							" count of spaces for shift by >>
set softtabstop=2							" count of spaces wich tabs printed
set smarttab
set autoindent								" same indent on next line
set smartindent
set cursorline								" highlight line under cursor
set noswapfile
set nobackup
set nowritebackup
set nowrap
set encoding=utf-8
set fileencoding=utf-8
set textwidth=100
set colorcolumn=+1
set formatoptions-=t					" Don't auto-break long lines (re-enable this for prose)

set listchars=tab:»\ 					" hidden chars. turn on/off: set (no)list
" set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
au BufWinEnter * hi SpecialKey ctermfg=darkgray guifg=darkgray

set ignorecase								" search with ignore case
set smartcase
set hlsearch									" highlight search result
set incsearch									" do search when typing
set showmatch
set hidden										" hidden unsaved buffer
set scrolloff=8
set showcmd										" Show incomplete command in status bar
" set novisualbell
" set noerrorbells
set wildmenu									" vim commands autocompletion
set wildmode=list:longest,full

set splitbelow
set splitright

set backspace=indent,eol,start

set mouse=a										" can use mouse like other editors
set t_Co=256									" use 256 colors
set background=dark
silent! colorscheme gruvbox
hi Normal     ctermbg=NONE
hi CursorLine ctermbg=NONE
hi Visual     term=reverse cterm=reverse

set formatoptions-=cro	" don't auto insert comment on new line

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Fix 256color terminals bg color
" Ref: https://askubuntu.com/questions/739620/vim-theme-showing-up-strange-in-tmux
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" ================================================================================
" NeoVIM Terminal settings
" ================================================================================

