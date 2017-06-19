map <Enter> <Plug>(expand_region_expand)
map <BS> <Plug>(expand_region_shrink)

let g:expand_region_text_objects = get(g:, 'expand_region_text_objects', {
                  \ 'iW'  :0,
                  \ 'i''' :0,
                  \ 'i"'  :0,
                  \ 'i]'  :1,
                  \ 'il'  :0,
                  \ 'is'  :0,
                  \ 'ib'  :1,
                  \ 'iB'  :1,
                  \ 'it'  :1,
                  \ 'ip'  :0,
                  \ 'ie'  :0,
                  \})

call expand_region#custom_text_objects('ruby', {
                  \ 'im' :0,
                  \ 'am' :0,
                  \ 'iM' :0,
                  \ 'aM' :0,
                  \ })
