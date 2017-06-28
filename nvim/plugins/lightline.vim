let g:lightline = {
      \ 'colorscheme': 'lightline_solarized',
      \ 'component_function': {
      \   'filetype': 'FileType',
      \   'fileformat': 'FileFormat',
      \   'gitbranch': 'fugitive#head',
      \   'readonly': 'LightlineReadonly',
      \ 'bufferbefore': 'lightline#buffer#bufferbefore',
      \ 'bufferafter': 'lightline#buffer#bufferafter',
      \ 'bufferinfo': 'lightline#buffer#bufferinfo'
      \ },
      \ 'tabline': {
      \ 'left': [ [ 'bufferinfo' ], [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
      \ 'right': [ [  ], ],
      \ },
      \ 'component_expand': {
      \ 'buffercurrent': 'lightline#buffer#buffercurrent2',
      \ },
      \ 'component_type': {
      \ 'buffercurrent': 'tabsel',
      \ },
      \ }

let g:lightline.active = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'gitbranch', 'filename', 'modified' ] ],
      \ 'right': [ [ '' ],
      \            [ 'percent' ],
      \            [ 'filetype' ] ] }


let g:lightline.inactive = {
      \ 'left': [ [ 'filename' ] ],
      \ 'right': [ [ 'percent' ],
      \            [ 'filetype' ] ] }

function! FileType()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! FileFormat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction

let g:lightline_buffer_excludes = ['neoterm', 'zsh']
