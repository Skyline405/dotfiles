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

