return require("packer").startup(function()

  -- A use-package inspired plugin manager for Neovim.
  -- https://github.com/wbthomason/packer.nvim
  use("wbthomason/packer.nvim")

  -- Neovim's answer to the mouse: a "clairvoyant" interface that makes on-screen navigation quicker and more natural than ever
  -- https://github.com/ggandor/leap.nvim
  use("ggandor/leap.nvim")

  -- Enhanced f/t motions for Leap
  -- https://github.com/ggandor/flit.nvim
  use("ggandor/flit.nvim")

  -- Actions at a distance
  -- https://github.com/ggandor/leap-spooky.nvim
  use("ggandor/leap-spooky.nvim")
  
  -- An all in one plugin for converting text case in Neovim
  -- https://github.com/johmsalas/text-case.nvim
  use("johmsalas/text-case.nvim")

  -- Add/change/delete surrounding delimiter pairs with ease. Written with ❤️ in Lua.
  -- https://github.com/kylechui/nvim-surround
  use("kylechui/nvim-surround")

  -- Neovim plugin introducing a new operators motions to quickly replace and exchange text.
  -- https://github.com/gbprod/substitute.nvim
  use("gbprod/substitute.nvim")

  -- Improved Yank and Put functionalities for Neovim.
  -- https://github.com/gbprod/yanky.nvim
  use("gbprod/yanky.nvim")

  -- Plugin that adds a cut operation separate from delete.
  -- https://github.com/gbprod/cutlass.nvim
  use("gbprod/cutlass.nvim")

  -- Vim plugin for copying to the system clipboard with text-objects and motions.
  -- https://github.com/christoomey/vim-system-copy
  use("christoomey/vim-system-copy")
  
  -- Nvim Treesitter configurations and abstraction layer.
  -- https://github.com/nvim-treesitter/nvim-treesitter
  use("nvim-treesitter/nvim-treesitter")

  -- Location and syntax aware text objects which *do what you mean*.
  -- https://github.com/RRethy/nvim-treesitter-textsubjects
  use("RRethy/nvim-treesitter-textsubjects")
  
  -- Smart and powerful comment plugin for neovim.
  -- https://github.com/numToStr/Comment.nvim
  use("numToStr/Comment.nvim")
  
  -- More useful word motions for Vim
  -- https://github.com/chaoren/vim-wordmotion
  use("chaoren/vim-wordmotion")
  
  -- A complete plugin for moving and duplicating blocks and lines
  -- https://github.com/booperlv/nvim-gomove
  use("booperlv/nvim-gomove")

  -- repeat.vim: enable repeating supported plugin maps with "."
  -- https://github.com/tpope/vim-repeat
  use("tpope/vim-repeat")
  
  -- A better user experience for viewing and interacting with Vim marks.
  -- https://github.com/chentoast/marks.nvim
  use("chentoast/marks.nvim")

  -- Text Objects
  -- Bundle of more than a dozen new text objects for Neovim.
  -- https://github.com/chrisgrieser/nvim-various-textobjs
  use("chrisgrieser/nvim-various-textobjs")

  -- Text objects for numbers
  -- https://github.com/MisanthropicBit/vim-numbers
  use("MisanthropicBit/vim-numbers")

end)
