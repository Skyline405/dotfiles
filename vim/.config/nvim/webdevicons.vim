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

