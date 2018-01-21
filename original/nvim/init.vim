let g:config_dir = $HOME . '/.dotfiles/nvim/'

execute 'source ' . g:config_dir . '/plugins.vim'
execute 'source ' . g:config_dir . '/bootstrap.vim'
execute 'source ' . g:config_dir . '/terminal.vim'
execute 'source ' . g:config_dir . '/keymaps.vim'
execute 'source ' . g:config_dir . '/abbreviations.vim'

for filename in split(glob(g:config_dir . '/plugins/*.vim'), '\n')
  execute 'source ' . filename
endfor

for filename in split(glob(g:config_dir . '/lib/*.vim'), '\n')
  execute 'source ' . filename
endfor

if filereadable( expand( '$HOME/.init.local.vim' ) )
  source $HOME/.init.local.vim
endif