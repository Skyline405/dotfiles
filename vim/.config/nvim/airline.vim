" ==============================================================================
" Airline options
" ==============================================================================
let g:airline_powerline_fonts = 0

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''

let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline_symbols.maxlinenr = ''

" let g:airline_theme = 'onedark'
let g:airline_theme = 'term'
let airline#extensions#promptline#color_template = 'insert'

let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#keymap_ignored_filetypes = ['vimfiler', 'nerdtree']


