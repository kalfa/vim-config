let g:ale_enabled = 1
au BufReadPre,BufNewFile * :ALEDisableBuffer
au BufReadPre,BufNewFile *.py :ALEEnableBuffer
