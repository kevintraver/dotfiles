local use = require('packer').use

require('packer').startup(function()

  use 'lewis6991/impatient.nvim'
  use 'wbthomason/packer.nvim'

  use 'famiu/nvim-reload'

  use 'ggandor/lightspeed.nvim'

  use {"liuchengxu/vim-clap", run = ":Clap install-binary!"}

  use 'nvim-treesitter/nvim-treesitter'
  use { 'RRethy/nvim-treesitter-textsubjects', requires = { 'nvim-treesitter/nvim-treesitter' } }

  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }

  use 'wellle/targets.vim'
  use 'landock/vim-expand-region'
  use 'tami5/sqlite.lua'
  use 'numToStr/Comment.nvim'

  use {'jdhao/better-escape.vim', event = 'InsertEnter'}

  use 'tpope/vim-abolish'

  use 'tpope/vim-repeat'
  use 'tpope/vim-sleuth'
  use 'windwp/nvim-autopairs'
  use 'machakann/vim-sandwich'
  use 'kyazdani42/nvim-web-devicons'

  use 'rktjmp/highlight-current-n.nvim'
  use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} }

  use 'AndrewRadev/switch.vim'
  use 'tommcdo/vim-exchange'
  use 'machakann/vim-swap'
  use 'mizlan/iswap.nvim'
  use 'Pocco81/AutoSave.nvim'
  use 'AndrewRadev/splitjoin.vim'

  use 'fedepujol/move.nvim'

  use 'aserowy/tmux.nvim'

  use { 'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }

  use 'projekt0n/github-nvim-theme'

  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'TimUntersberger/neogit', requires = { 'nvim-lua/plenary.nvim' } }

  use { 'beauwilliams/focus.nvim' }
  use { 'ahmedkhalf/project.nvim' }
  use { 'p00f/nvim-ts-rainbow' }

  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'sindrets/winshift.nvim' }
  use { 'famiu/bufdelete.nvim' }
  use { 'chaoren/vim-wordmotion' }
  use { 'kevinhwang91/nvim-bqf' }
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end, requires = { 'junegunn/fzf.vim' } }
  use { 'f-person/git-blame.nvim' }

  use { 'mhinz/vim-sayonara' }
  use { 'ms-jpq/coq_nvim', branch = 'coq' }
  use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

  use { 'nikvdp/neomux' }
  use { 'mtikekar/nvim-send-to-term' }
  use { 'kassio/neoterm' }

  use { 'brettanomyces/nvim-terminus' }


  use { 'chentau/marks.nvim' }
  use { "folke/twilight.nvim" }

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  use { 'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make' }}

  use 'lukas-reineke/indent-blankline.nvim'
  use 'abecodes/tabout.nvim'

  use 'simrat39/symbols-outline.nvim'

  use 'kwkarlwang/bufjump.nvim'
  use 'justinmk/vim-gtfo'
  use 'stsewd/gx-extended.vim'

  use 'mtth/scratch.vim'
  use 'mcchrish/nnn.vim'

  use 'arthurxavierx/vim-caser'
  use 'svermeulen/vim-subversive'

  use 'christoomey/vim-system-copy'
  use 'ethanholz/nvim-lastplace'

  use 'kana/vim-textobj-user'
  use 'kana/vim-textobj-entire'
  use 'saaguero/vim-textobj-pastedtext'

  use 'rmagatti/igs.nvim'

end)
