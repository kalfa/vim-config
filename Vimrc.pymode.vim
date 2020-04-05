"let g:pymode_python = 'python3'
let g:pymode_run = 1 " <leader>r to run code
let g:pymode_lint = 0 " experiment with vim-ale, which is mutually exclusive with pymode_lint
let g:pymode_lint_checkers = []
"call add(g:pymode_lint_checkers, 'pep8')
"call add(g:pymode_lint_checkers, 'pylint')
let g:pymode_lint_onfly = 0
let g:pymode_lint_on_write = 0
"let g:pymode_lint_ignore = "F0401" " unable to import a module
let g:pymode_lint_signs = 0
let g:pymode_motion = 1  " Enable vim-motions for python (C and M)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0 " Might conflict with Jedi
let g:pymode_rope_complete_on_dot = 0
"let g:pymode_rope_show_doc_bind = '' " empty to unset it
let g:pymode_indent = 1  " enable PEP8 indentation
let g:pymode_folding = 1  " this can slow down a lot, see
			  " https://github.com/python-mode/python-mode/issues/523
                          " To improve folding speed, use https://github.com/Konfekt/FastFold
let g:pymode_options = 0  " set some default options to work with python
let g:pymode_virutalenv = 1
let g:pymode_syntax = 0 " disable on slow HW
"let g:pymode_syntax_slow_sync = 1 " disable on slow HW
let g:pymode_syntax_all = 0
