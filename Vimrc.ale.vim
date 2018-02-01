if globpath(&runtimepath, 'plugin/ale.vim', 1) != ''
  let g:ale_enabled = 1
  let b:ale_enabled = 0
  let g:airline#extensions#ale#enabled = 1
  "augroup ALE
  "  au BufReadPre,BufNewFile * :ALEDisableBuffer
  "augroup END
endif
