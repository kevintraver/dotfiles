local use = require('packer').use

require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'famiu/nvim-reload'

  use 'ggandor/lightspeed.nvim'

  use 'tanvirtin/monokai.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } } }

  use 'nvim-treesitter/nvim-treesitter'
  use 'RRethy/nvim-treesitter-textsubjects'

  use 'wellle/targets.vim'
  use 'landock/vim-expand-region'
  use 'tami5/sqlite.lua'
  use 'numToStr/Comment.nvim'

  use 'tpope/vim-repeat'
  use 'tpope/vim-endwise'
  use 'tpope/vim-surround'
  use 'kyazdani42/nvim-web-devicons'

  use 'rktjmp/highlight-current-n.nvim'
  use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} }

  use 'AndrewRadev/switch.vim'
  use 'tommcdo/vim-exchange'

end)

vim.api.nvim_exec([[
  augroup Plugins
    autocmd!
    autocmd BufWritePost plugins.lua Reload
    autocmd BufWritePost plugins.lua PackerInstall
    augroup end
]], false)
