" ==============================================================================
" Easymotion plugin
" ==============================================================================
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" Need one more keystroke, but on average, it may be more comfortable.
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)

map  <leader>F <Plug>(easymotion-bd-f2)
nmap <leader>F <Plug>(easymotion-overwin-f2)

" JK motions: Line motions
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)

" Move to line
map  <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

map  <Leader>e <Plug>(easymotion-bd-e)
nmap <Leader>e <Plug>(easymotion-overwin-e)

map  <Leader>b <Plug>(easymotion-bd-b)
nmap <Leader>b <Plug>(easymotion-overwin-b)

