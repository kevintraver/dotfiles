local use = require('packer').use

require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'famiu/nvim-reload'

  use 'ggandor/lightspeed.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } } }
  use { 'nvim-telescope/telescope-frecency.nvim', requires = {"tami5/sqlite.lua"} }
  use { 'AckslD/nvim-neoclip.lua', requires = {'tami5/sqlite.lua', module = 'sqlite'} }

  use 'nvim-treesitter/nvim-treesitter'
  use 'RRethy/nvim-treesitter-textsubjects'
  -- use 'RRethy/vim-illuminate'

  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }

  use 'wellle/targets.vim'
  use 'landock/vim-expand-region'
  use 'tami5/sqlite.lua'
  use 'numToStr/Comment.nvim'

  use {'jdhao/better-escape.vim', event = 'InsertEnter'}

  use 'tpope/vim-repeat'
  use 'tpope/vim-endwise'
  use 'tpope/vim-surround'
  use 'kyazdani42/nvim-web-devicons'

  use 'rktjmp/highlight-current-n.nvim'
  use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} }

  use 'AndrewRadev/switch.vim'
  use 'tommcdo/vim-exchange'
  use 'Pocco81/AutoSave.nvim'

  use 'matze/vim-move'

  use 'rmehri01/onenord.nvim'
  use 'aserowy/tmux.nvim'

  use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }

  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'TimUntersberger/neogit', requires = { 'nvim-lua/plenary.nvim' } }

  use { 'beauwilliams/focus.nvim' }
  use { 'ahmedkhalf/project.nvim' }
  use { 'p00f/nvim-ts-rainbow' }

  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'famiu/bufdelete.nvim' }

end)

vim.api.nvim_exec([[
  augroup Plugins
    autocmd!
    autocmd BufWritePost plugins.lua Reload
    augroup end
]], false)
