if globpath(&runtimepath, 'plugin/ale.vim', 1) != ''
  let g:ale_enabled = 1
  let b:ale_enabled = 0
  let g:airline#extensions#ale#enabled = 1
  " avoid highlights which are annoying, use only signs
  let g:ale_set_highlights = 0
  let g:ale_set_signs = 1
endif
