"if globpath(&runtimepath, 'plugin/airline.vim', 1) != ''
	" airline conf
	" <https://github.com/vim-airline/vim-airline/>
	let g:airline_theme='simple'
	" Remove 'mode' part from the default airline section_a statusline
	let g:airline_section_a = airline#section#create_left(['crypt', 'paste', 'keymap', 'spell', 'capslock', 'xkblayout', 'iminsert'])
	let g:airline_section_y = airline#section#create_left([])  " I don't want fileencoding and fileformat
	"set noshowmode " hide the mode since airline has it already in the statusline
	"
	let g:airline#extensions#ale#enabled = 1
	let g:airline_powerline_fonts = 1
	" show the full path of the tag (e.g. class + method) in statusbar
	let g:airline#extensions#tagbar#enabled = 1
	let g:airline#extensions#tagbar#flags = 'f'

"endif
