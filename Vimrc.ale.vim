"if globpath(&runtimepath, 'plugin/ale.vim', 1) != ''
  let g:ale_enabled = 1
  let b:ale_enabled = 0
  let g:airline#extensions#ale#enabled = 1
  " avoid highlights which are annoying, use only signs
  let g:ale_set_highlights = 0
  let g:ale_set_signs = 1

  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_enter = 0
  let g:ale_lint_on_save = 1
  nmap <leader>af :ALEFix<CR>
  nmap <leader>al :ALELint<CR>

  if &filetype=='python'
	  let b:ale_enabled = 1
	  let g:ale_lint_on_save = 1
	  let g:ale_sign_column_always = 1
	  " to disable some warning/error
	  let b:ale_python_pylint_options = "-d=no-else-raise -d=missing-docstring"
	  let b:ale_python_pylint_auto_pipenv = 1
	  let b:ale_python_mypy_auto_pipenv = 1

	  let b:ale_linters = ['pylint', 'mypy', 'pep8']

	  let b:ale_fixers = ['autopep8',
				  \ 'add_blank_lines_for_python_control_statements',
				  \ 'isort',
				  \ 'remove_trailing_lines',
				  \ 'trim_whitespace',
				  \ 'yapf',
				  \ ]
	  " mypy conf goes in ~/.mypy.ini
	  "let b:ale_python_mypy_options='--namespace-packages'
  endif  " end if ft=python
"endif
