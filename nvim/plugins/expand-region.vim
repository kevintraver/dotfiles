map <BS> <Plug>(expand_region_expand)
map <M-BS> <Plug>(expand_region_shrink)

call expand_region#custom_text_objects('ruby', {
                  \ 'im' :0,
                  \ 'am' :0,
                  \ 'iM' :0,
                  \ 'aM' :0,
                  \ })
