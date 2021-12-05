vim.api.nvim_exec(
  [[

    let g:sandwich_no_default_key_mappings = 1
    silent! nmap <unique><silent> gsd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
    silent! nmap <unique><silent> gsr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
    silent! nmap <unique><silent> gsdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
    silent! nmap <unique><silent> gsrb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

    let g:operator_sandwich_no_default_key_mappings = 1
    silent! map <unique> gsa <Plug>(operator-sandwich-add)
    silent! xmap <unique> gsd <Plug>(operator-sandwich-delete)
    silent! xmap <unique> gsr <Plug>(operator-sandwich-replace)

  ]],
false)
