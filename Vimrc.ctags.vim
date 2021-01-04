" ctags_path in Vimrc.local
autocmd FileType c,cpp let g:ctags_args="--c++-kinds=+pmef --fields=+iaS --extra=+q --language-force=C++"
autocmd FileType python let g:ctags_args="--python-kinds=-i --language-force=Python"
let g:ctags_statusline=0
let g:ctags_title=0
let g:ctags_regenerate=0
"let generate_tags=1
