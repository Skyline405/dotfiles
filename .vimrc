" VIM settings
set number					" show lines numbers
set ruler					" show line number at the bottom bar
set tabstop=4				" tabs size
set shiftwidth=4
set softtabstop=4

call plug#begin('~/.vim/plugged')

" Main plugins
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Themes
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'morhetz/gruvbox'
Plug 'dikiaap/minimalist'
Plug 'AlessandroYorba/Sierra'

call plug#end()

" Mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotions-prefix)

set mouse=a
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set smartindent
"set rnu
"set keymap=russian-jcukenwin
"set iminsert=0
"set imsearch=0
set cursorline

set t_Co=256
set background=dark
colorscheme minimalist
