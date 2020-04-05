if globpath(&runtimepath, 'plugin/airline.vim', 1) != ''
	" airline conf
	" <https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt>
	let g:airline_theme='simple'
	" Remove 'mode' part from the default airline section_a statusline
	let g:airline_section_a = airline#section#create_left(['crypt', 'paste', 'keymap', 'spell', 'capslock', 'xkblayout', 'iminsert'])
	"let g:airline_section_b = airline#section#create_left([airline#extensions#branch#get_head()])
	let g:airline_section_y = airline#section#create_left([])  " I don't want fileencoding and fileformat
	"set noshowmode " hide the mode since airline has it already in the statusline
	"
	" enable tabbar for airline
	let g:airline#extensions#tagbar#enabled = 1
	let g:airline#extensions#ale#enabled = 1
	let g:airline_powerline_fonts = 1
	let g:airline#extensions#tagbar#flags = 'f'

endif
