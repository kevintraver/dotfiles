return require("packer").startup(function()

  -- A use-package inspired plugin manager for Neovim.
  -- https://github.com/wbthomason/packer.nvim
  use("wbthomason/packer.nvim")

  -- Lightspeed is a motion plugin for Neovim.
  -- https://github.com/ggandor/lightspeed.nvim
  use("ggandor/lightspeed.nvim")

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

  -- Text Objects

  -- vim-textobj-user is a Vim plugin to create your own text object.
  -- https://github.com/kana/vim-textobj-user
  use("kana/vim-textobj-user")

  -- Text objects for the current line.
  -- https://github.com/kana/vim-textobj-line
  use("kana/vim-textobj-line")
  
  -- A convenient text object for last pasted text.
  -- https://github.com/saaguero/vim-textobj-pastedtext
  use("saaguero/vim-textobj-pastedtext")
  
  -- Text objects for dealing with URIs.
  -- https://github.com/jceb/vim-textobj-uri
  use("jceb/vim-textobj-uri")

end)
