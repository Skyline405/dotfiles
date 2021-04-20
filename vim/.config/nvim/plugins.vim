" This must be first, because it changes other options as a side effect.
set nocompatible

if len(system('which git')) <= 0
	echo "Installing GIT..."
	silent !apt install git -y " TODO: adapt for any other systems?
endif

" Download vim-plug if not already installed
if has('unix')
  if empty(glob('~/.vim/autoload/plug.vim'))
    echom "Install vim-plug!"
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

" ==============================================================================
" General plugins
" ==============================================================================
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'bronson/vim-trailing-whitespace'
Plug 'lilydjwg/colorizer' " show color for colorcode in vim
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Plug 'terryma/vim-multiple-cursors'
" Plug 'scrooloose/syntastic'
" Plug 'mattn/emmet-vim' " emmet for vim (not work)

" ==============================================================================
" Interface
" ==============================================================================
Plug 'bling/vim-airline' ", { 'do': 'apt-get install fonts-powerline -y' }
Plug 'vim-airline/vim-airline-themes'
" Plug 'ryanoasis/vim-devicons'

" ==============================================================================
" Languages support
" ==============================================================================
" Support all popular languages (syntax, ident and smth. else)
Plug 'sheerun/vim-polyglot' " suport syntax highlight for most of laguages

" ==============================================================================
" Themes
" ==============================================================================
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'crusoexia/vim-monokai'

" ==============================================================================
" GIT
" ==============================================================================
Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive' " git commands for vim

" ==============================================================================
" Other
" ==============================================================================
" Iteractive scratchpad
Plug 'metakirby5/codi.vim'

" Markdown previw support
Plug 'shime/vim-livedown'

" ==============================================================================
call plug#end()

