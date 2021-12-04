local use = require('packer').use

require('packer').startup( function()

  -- packer
  use { 'wbthomason/packer.nvim' }

  -- improve startup time
  use { 'lewis6991/impatient.nvim' }

  -- sqlite support
  use { 'tami5/sqlite.lua' }

  -- tmux
  use { 'aserowy/tmux.nvim' }

  -- statusline
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  -- movement
  use { 'ggandor/lightspeed.nvim' }

  -- motion / text objects
  use { 'wellle/targets.vim' }
  use { 'chaoren/vim-wordmotion' }
  use { 'kana/vim-textobj-user' }
  use { 'kana/vim-textobj-entire' }
  use { 'saaguero/vim-textobj-pastedtext' }
  use { 'landock/vim-expand-region' }

  -- directory
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'mcchrish/nnn.vim' }

  -- settings
  use { 'tpope/vim-sleuth' }

  -- utilities
  use { 'ahmedkhalf/project.nvim' }
  use { 'ethanholz/nvim-lastplace' }
  use { 'christoomey/vim-system-copy' }
  use { 'folke/twilight.nvim' }
  use { 'justinmk/vim-gtfo' }
  use { 'famiu/nvim-reload' }
  use { 'Pocco81/AutoSave.nvim' }
  use { 'stsewd/gx-extended.vim' }
  use { 'folke/todo-comments.nvim' }

  -- editing / text manipulation
  use { 'AndrewRadev/splitjoin.vim' }
  use { 'jdhao/better-escape.vim', event = 'InsertEnter' }
  use { 'abecodes/tabout.nvim' }
  use { 'arthurxavierx/vim-caser' }
  use { 'tpope/vim-repeat' }
  use { 'svermeulen/vim-subversive' }
  use { 'tommcdo/vim-exchange' }
  use { 'machakann/vim-swap' }
  use { 'mizlan/iswap.nvim' }
  use { 'machakann/vim-sandwich' }
  use { 'AndrewRadev/switch.vim' }
  use { 'tpope/vim-abolish' }
  use { 'p00f/nvim-ts-rainbow' }
  use { 'windwp/nvim-autopairs' }
  use { 'fedepujol/move.nvim' }

  -- marks
  use { 'chentau/marks.nvim' }

  -- highlighting
  use { 'rktjmp/highlight-current-n.nvim' }

  -- indent
  use { 'lukas-reineke/indent-blankline.nvim' }

  -- comments
  use { 'numToStr/Comment.nvim' }
  use { 'mtth/scratch.vim' }

  -- icons
  use { 'kyazdani42/nvim-web-devicons' }

  -- search
  use { 'liuchengxu/vim-clap', run = ':Clap install-binary!' }
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end, requires = { 'junegunn/fzf.vim' } }
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } } }
  use { 'nvim-telescope/telescope-project.nvim', requires = { 'nvim-telescope/telescope.nvim' } }
  use { 'nvim-telescope/telescope-frecency.nvim', requires = {'tami5/sqlite.lua'} }
  use { 'jvgrootveld/telescope-zoxide' }

  -- theme
  use { 'projekt0n/github-nvim-theme' }

  -- tabs / buffers / windows
  use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'beauwilliams/focus.nvim' }
  use { 'kwkarlwang/bufjump.nvim' }
  use { 'sindrets/winshift.nvim' }
  use { 'famiu/bufdelete.nvim' }
  use { 'mhinz/vim-sayonara' }

  -- quickfix
  use { 'kevinhwang91/nvim-bqf' }

  -- completion
  use { 'ms-jpq/coq_nvim', branch = 'coq' }
  use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

  -- git
  use { 'TimUntersberger/neogit', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'sindrets/diffview.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'rmagatti/igs.nvim' }
  use { 'f-person/git-blame.nvim' }

  -- treesitter / lsp
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-treesitter/nvim-treesitter' }
  use { 'RRethy/nvim-treesitter-textsubjects', requires = { 'nvim-treesitter/nvim-treesitter' } }
  use { 'williamboman/nvim-lsp-installer' }
  use { 'ray-x/navigator.lua', requires = { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' } }
  use { 'simrat39/symbols-outline.nvim' }

  -- terminal
  use { 'kassio/neoterm' }
  use { 'nikvdp/neomux' }
  use { 'mtikekar/nvim-send-to-term' }
  use { 'brettanomyces/nvim-terminus' }

end)
