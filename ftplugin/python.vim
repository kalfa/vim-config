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
