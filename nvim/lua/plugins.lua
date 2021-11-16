local use = require('packer').use

require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'famiu/nvim-reload'

  use 'ggandor/lightspeed.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } } }
  use { 'nvim-telescope/telescope-frecency.nvim', requires = {"tami5/sqlite.lua"} }
  use { 'AckslD/nvim-neoclip.lua', requires = {'tami5/sqlite.lua', module = 'sqlite'} }

  use 'nvim-treesitter/nvim-treesitter'
  use { 'RRethy/nvim-treesitter-textsubjects', requires = { 'nvim-treesitter/nvim-treesitter' } }

  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }

  use 'wellle/targets.vim'
  use 'landock/vim-expand-region'
  use 'tami5/sqlite.lua'
  use 'numToStr/Comment.nvim'

  use {'jdhao/better-escape.vim', event = 'InsertEnter'}

  use 'tpope/vim-repeat'
  use 'windwp/nvim-autopairs'
  use 'blackCauldron7/surround.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use 'rktjmp/highlight-current-n.nvim'
  use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} }

  use 'AndrewRadev/switch.vim'
  use 'tommcdo/vim-exchange'
  use 'machakann/vim-swap'
  use 'mizlan/iswap.nvim'
  use 'Pocco81/AutoSave.nvim'

  use 'fedepujol/move.nvim'

  use 'rmehri01/onenord.nvim'
  use 'aserowy/tmux.nvim'

  use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }

  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'TimUntersberger/neogit', requires = { 'nvim-lua/plenary.nvim' } }

  use { 'beauwilliams/focus.nvim' }
  use { 'ahmedkhalf/project.nvim' }
  use { 'p00f/nvim-ts-rainbow' }

  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'sindrets/winshift.nvim' }
  use { 'famiu/bufdelete.nvim' }
  use { 'chaoren/vim-wordmotion' }
  use { 'kevinhwang91/nvim-bqf', ft = 'qf' }
  use { 'mhinz/vim-sayonara' }
  use { 'ms-jpq/coq_nvim', branch = 'coq' }
  use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

  use { 'nikvdp/neomux' }
  use { 'mtikekar/nvim-send-to-term' }
  use { 'kassio/neoterm' }
  use { 'chentau/marks.nvim' }
  use { "folke/twilight.nvim" }

  use 'neovim/nvim-lspconfig'
  use { 'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make' }}

  use 'lukas-reineke/indent-blankline.nvim'
  use {'kevinhwang91/nvim-bqf'}

end)
