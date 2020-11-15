" ==============================================================================
" Autocommands
" ==============================================================================
" restore last cursor position
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" au BufRead,BufNewFile *.asm set filetype=nasm " only this ext has this type
au BufRead,BufNewFile *.rs set filetype=rust
