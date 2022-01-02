local use = require('packer').use

require'packer'.init({ max_jobs=50 })

require('packer').startup( function()

  -- packer
  use { 'wbthomason/packer.nvim' }

  -- improve startup time
  use { 'lewis6991/impatient.nvim' }

  -- sqlite support
  use { 'tami5/sqlite.lua' }

  -- utilities
  use { 'nvim-lua/plenary.nvim' }

  -- tmux
  use { 'aserowy/tmux.nvim' }
  use { 'alexghergh/nvim-tmux-navigation' }


  -- statusline
  use { 'nvim-lualine/lualine.nvim' }

  -- movement
  use { 'ggandor/lightspeed.nvim' }
  use { 'unblevable/quick-scope' }
  use { 'danilamihailov/beacon.nvim' }

  -- motion / text objects
  use { 'wellle/targets.vim' }
  use { 'chaoren/vim-wordmotion' }
  use { 'kana/vim-textobj-user' }
  use { 'kana/vim-textobj-entire' }
  use { 'kana/vim-textobj-line' }
  use { 'saaguero/vim-textobj-pastedtext' }
  use { 'landock/vim-expand-region' }
  use { 'andymass/vim-matchup' }
  use { 'jceb/vim-textobj-uri' }
  use { 'utubo/vim-textobj-twochars' }
  use { 'MisanthropicBit/vim-numbers' }

  -- directory
  use { 'kyazdani42/nvim-tree.lua' }
  use { 'mcchrish/nnn.vim' }
  use { 'kevinhwang91/rnvimr' }

  -- settings
  use { 'tpope/vim-sleuth' }

  -- utilities
  use { 'simnalamburt/vim-mundo' }
  use { 'ahmedkhalf/project.nvim' }
  use { 'ethanholz/nvim-lastplace' }
  use { 'nacro90/numb.nvim' }
  use { 'christoomey/vim-system-copy' }
  use { 'folke/twilight.nvim' }
  use { 'justinmk/vim-gtfo' }
  use { 'famiu/nvim-reload' }
  use { 'Pocco81/AutoSave.nvim' }
  use { 'stsewd/gx-extended.vim' }
  use { 'folke/todo-comments.nvim' }
  use { 'jghauser/mkdir.nvim' }
  use { 'Pocco81/AbbrevMan.nvim' }

  -- editing / text manipulation
  use { 'AndrewRadev/splitjoin.vim' }
  use { 'jdhao/better-escape.vim' }
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
  use { 'booperlv/nvim-gomove' }
  use { 'nvim-pack/nvim-spectre' }
  use { 'monaqa/dial.nvim' }
  use { 'svermeulen/vim-cutlass' }
  use { 'cyansprite/Extract' }
  use { 'svban/YankAssassin.vim' }
  use { 'tversteeg/registers.nvim' }

  -- marks
  use { 'chentau/marks.nvim' }

  -- highlighting
  use { 'kevinhwang91/nvim-hlslens' }
  use { 'haya14busa/vim-asterisk' }

  -- indent
  use { 'lukas-reineke/indent-blankline.nvim' }

  -- comments
  use { 'numToStr/Comment.nvim' }
  use { 'mtth/scratch.vim' }

  -- icons
  use { 'kyazdani42/nvim-web-devicons' }

  -- search
  use { 'liuchengxu/vim-clap' }
  use { 'junegunn/fzf' }
  use { 'junegunn/fzf.vim' }
  use { 'nvim-telescope/telescope.nvim' }
  use { 'nvim-telescope/telescope-fzf-native.nvim' }
  use { 'nvim-telescope/telescope-project.nvim' }
  use { 'nvim-telescope/telescope-frecency.nvim' }
  use { 'jvgrootveld/telescope-zoxide' }

  -- theme
  use { 'Mofiqul/dracula.nvim' }

  -- tabs / buffers / windows
  use { 'romgrk/barbar.nvim' }
  use { 'beauwilliams/focus.nvim' }
  use { 'dhruvasagar/vim-zoom' }
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
  use { 'TimUntersberger/neogit' }
  use { 'lewis6991/gitsigns.nvim' }
  use { 'junegunn/gv.vim' }
  use { 'tpope/vim-fugitive' }
  use { 'ruifm/gitlinker.nvim' }
  use { 'rbong/vim-flog' }
  use { 'sindrets/diffview.nvim' }
  use { 'rmagatti/igs.nvim' }
  use { 'f-person/git-blame.nvim' }
  use { 'oguzbilgic/vim-gdiff' }
  use { 'tanvirtin/vgit.nvim', branch = 'develop' }

  -- treesitter / lsp
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-treesitter/nvim-treesitter' }
  use { 'RRethy/nvim-treesitter-textsubjects' }
  use { 'williamboman/nvim-lsp-installer' }
  use { 'ray-x/navigator.lua' }
  use { 'ray-x/guihua.lua' }
  use { 'simrat39/symbols-outline.nvim' }

  -- terminal
  use { 'kassio/neoterm' }
  use { 'nikvdp/neomux' }
  use { 'mtikekar/nvim-send-to-term' }
  use { 'brettanomyces/nvim-terminus' }

  use { 'KadoBOT/nvim-spotify' }

end)
