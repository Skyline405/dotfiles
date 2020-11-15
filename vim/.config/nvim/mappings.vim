" ==============================================================================
" Mappings
" ==============================================================================
let g:mapleader = ' '

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Hide search highlight
nmap <leader>nh :set nohlsearch<CR>
nmap <leader>hh :set hlsearch!<CR>

" Map ctrl-movement keys to window switching
noremap <C-k> <C-w><Up>
noremap <C-j> <C-w><Down>
noremap <C-l> <C-w><Right>
noremap <C-h> <C-w><Left>

" Disable entering to ex mode
map Q <nop>

" Disable arrows (coz I don't wanna use it)
map <Left>   <nop>
map <Right>  <nop>
map <Up>     <nop>
map <Down>   <nop>

" Disable ctrl + arrows to navigate
noremap <C-Left>   <nop>
noremap <C-Right>  <nop>
noremap <C-Up>     <nop>
noremap <C-Down>   <nop>

" Insert new line and stay in normal mode
nnoremap <C-o> o<esc>
nnoremap <C-O> O<esc>

" Navigate betwen display lines
" noremap <silent><expr> k v:count == 0 ? 'gk' : 'k'
" noremap <silent><expr> j v:count == 0 ? 'gj' : 'j'
noremap k gk
noremap j gj

" Buffers navigation maps
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab
nmap <leader>x :bd<CR>

noremap <leader>ss :syntax sync fromstart<CR>
imap jj <ESC>

" Edit .vimrc
if has('nvim')
	map <leader>vl :e ~/.vimrc<CR>
else
	map <leader>vl :e $MYVIMRC<CR>
endif
map <leader>vr :source $MYVIMRC<CR>

" Copy/Paste system clipboard FIXME: make separated buffers
" More info see here:
"	https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim
if has('clipboard')
	" Using system clipboard (unnamed - mouse clip, unnamedplus - Ctrl clip)
	set clipboard=unnamedplus

	" Clipboard (system use: <C-c>/<C-v>) [unnamedplus]
	noremap <Leader>y "+y
	noremap <Leader>p "+p

	" Primary clipboard (Paste on MouseWheel) [unnamed]
	noremap <Leader>Y "*y
	noremap <Leader>P "*p
endif

" Save buffers undo/redo history
" if v:version >= 700
" set history=64
" set undolevels=128
" set undodir=~/.vim/undodir/
" set undofile
" set undoreload=1000
" endif

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
"
" " Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

