vim.api.nvim_exec(
  [[

    let g:sandwich_no_default_key_mappings = 1
    silent! nmap <unique><silent> <leader>sd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
    silent! nmap <unique><silent> <leader>sr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
    silent! nmap <unique><silent> <leader>sdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
    silent! nmap <unique><silent> <leader>srb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

    let g:operator_sandwich_no_default_key_mappings = 1
    silent! map <unique> <leader>sa <Plug>(operator-sandwich-add)
    silent! xmap <unique> <leader>sd <Plug>(operator-sandwich-delete)
    silent! xmap <unique> <leader>sr <Plug>(operator-sandwich-replace)

  ]],
false)
