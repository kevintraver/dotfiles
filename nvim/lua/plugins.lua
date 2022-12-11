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
  
  -- Easily change word casing with motions, text objects or visual mode.
  -- https://github.com/arthurxavierx/vim-caser
  use("arthurxavierx/vim-caser")

  -- A surround text object plugin for neovim written in lua.
  -- https://github.com/ur4ltz/surround.nvim
  use("ur4ltz/surround.nvim")

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

  -- Vim plugin that provides additional text objects
  -- https://github.com/wellle/targets.vim
  use("wellle/targets.vim")

  -- vim-textobj-user is a Vim plugin to create your own text object.
  -- https://github.com/kana/vim-textobj-user
  use("kana/vim-textobj-user")

  -- Text objects for the current line.
  -- https://github.com/kana/vim-textobj-line
  use("kana/vim-textobj-line")
  
  -- A convenient text object for last pasted text.
  -- https://github.com/saaguero/vim-textobj-pastedtext
  use("saaguero/vim-textobj-pastedtext")
  
  -- A vim plugin providing a single text object (on iv and av) for variable segments.
  -- https://github.com/Julian/vim-textobj-variable-segment
  use("Julian/vim-textobj-variable-segment")
  
  -- Text objects for dealing with URIs.
  -- https://github.com/jceb/vim-textobj-uri
  use("jceb/vim-textobj-uri")
  
  -- Text objects for numbers
  -- https://github.com/MisanthropicBit/vim-numbers
  use("MisanthropicBit/vim-numbers")

end)
