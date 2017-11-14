setlocal textwidth=79  " lines longer than 79 columns will be broken
setlocal shiftround    " round indent to multiple of 'shiftwidth'
setlocal autoindent    " align the new line indent with the previous line
"" Already set by the upstream ftplugin
"setlocal expandtab     " insert spaces when hitting TABs
"setlocal shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
"setlocal softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
"setlocal tabstop=4     " a hard TAB displays as 4 columns

""" PyMode
let g:pymode_run = 1 " <leader>r to run code
let g:pymode_lint = 0 " experiment with vim-ale, which is mutually exclusive with pymode_lint
let g:pymode_lint_checkers = []
call add(g:pymode_lint_checkers, 'pep8')
call add(g:pymode_lint_checkers, 'pylint')
let g:pymode_lint_onfly = 0
let g:pymode_lint_on_write = 0
"let g:pymode_lint_ignore = "F0401" " unable to import a module
let g:pymode_lint_signs = 0
let g:pymode_motion = 1  " Enable vim-motions for python (C and M)
let g:pymode_rope = 0
"let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_show_doc_bind = '' " empty to unset it
let g:pymode_indent = 1  " enable PEP8 indentation
let g:pymode_folding = 1
let g:pymode_options = 0
let g:pymode_virutalenv = 1
let g:pymode_syntax = 1 " disable on slow HW
"let g:pymode_syntax_slow_sync = 1 " disable on slow HW
let g:pymode_syntax_all = 1

setlocal foldlevel=2
setlocal encoding=utf-8

""" Ale
" See Vimrc.ale.vim for the autocommand to associate ale to python
let b:ale_fixers = ['autopep8', 
			\ 'add_blank_lines_for_python_control_statements',
			\ 'isort',
			\ 'remove_trailing_lines',
			\ 'trim_whitespace',
			\]
