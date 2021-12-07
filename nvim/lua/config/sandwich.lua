vim.api.nvim_exec(
  [[

    let g:sandwich_no_default_key_mappings = 1
    silent! nmap <unique><silent> 'd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
    silent! nmap <unique><silent> 'r <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
    silent! nmap <unique><silent> 'db <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
    silent! nmap <unique><silent> 'rb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

    let g:operator_sandwich_no_default_key_mappings = 1
    silent! map <unique> 'a <Plug>(operator-sandwich-add)
    silent! xmap <unique> 'd <Plug>(operator-sandwich-delete)
    silent! xmap <unique> 'r <Plug>(operator-sandwich-replace)

  ]],
false)
