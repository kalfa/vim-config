setlocal textwidth=119  " lines longer than x columns will be broken
setlocal shiftround     " round indent to multiple of 'shiftwidth'
setlocal autoindent     " align the new line indent with the previous line

if globpath(&runtimepath, 'plugin/pythonmode.vim', 1) == ''
  "FIXME this apparently does not set anything :-(
  setlocal expandtab     " insert spaces when hitting TABs
  setlocal shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
  setlocal softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
  setlocal tabstop=4     " a hard TAB displays as 4 columns
  setlocal autoindent
endif

setlocal foldlevel=2
setlocal encoding=utf-8

if filereadable($HOME."/.vim/Vimrc.pymode.vim")
  source $HOME/.vim/Vimrc.pymode.vim
endif


if globpath(&runtimepath, 'plugin/ale.vim', 1) != ''
  " ft=python related ALE configuration. Global settings go in Vimrc.ale.vim
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
  "let b:ale_python_mypy_options='--no-implicit-optional --no-strict-optional'
  let b:ale_python_mypy_options='--namespace-packages'
  "let b:ale_python_mypy_options='--ignore-missing-imports --no-implicit-optional --no-strict-optional'
endif


if globpath(&runtimepath, 'ftplugin/python/pytest.vim', 1) != ''
  nmap <silent><Leader>tF <Esc>:Pytest file<CR>
  nmap <silent><Leader>tFv <Esc>:Pytest file verbose<CR><C-w>=
  nmap <silent><Leader>tf <Esc>:Pytest function<CR>
  nmap <silent><Leader>tfv <Esc>:Pytest function verbose<CR>
  nmap <silent><Leader>tp <Esc>:Pytest project<CR>
  nmap <silent><Leader>tpv <Esc>:Pytest project verbose<CR>
  nmap <silent><Leader>tS <Esc>:Pytest session<CR>
  nmap <silent><Leader>tSv <Esc>:Pytest session verbose<CR>
endif
