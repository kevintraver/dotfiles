return require("packer").startup(function()

  -- A use-package inspired plugin manager for Neovim.
  -- https://github.com/wbthomason/packer.nvim
  use("wbthomason/packer.nvim")
  
  -- A Neovim plugin helping you establish good command workflow and habit
  -- https://github.com/m4xshen/hardtime.nvim
  use("m4xshen/hardtime.nvim")

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
  
  -- Neovim plugin for splitting/joining blocks of code
  -- https://github.com/Wansmer/treesj
  use("Wansmer/treesj")
  
  -- Neovim plugin for swaps closest siblings with Tree-Sitter
  -- https://github.com/Wansmer/sibling-swap.nvim
  use("Wansmer/sibling-swap.nvim")

  -- Location and syntax aware text objects which *do what you mean*.
  -- https://github.com/RRethy/nvim-treesitter-textsubjects
  use("RRethy/nvim-treesitter-textsubjects")
  
  -- Sorting plugin for Neovim that supports line-wise and delimiter sorting.
  -- https://github.com/sQVe/sort.nvim
  use("sQVe/sort.nvim")
  
  -- Smart and powerful comment plugin for neovim.
  -- https://github.com/numToStr/Comment.nvim
  use("numToStr/Comment.nvim")
  
  -- Use the w, e, b motions like a spider. Move by subwords and skip insignificant punctuation.
  -- https://github.com/chrisgrieser/nvim-spider
  use("chrisgrieser/nvim-spider")

  -- A complete plugin for moving and duplicating blocks and lines
  -- https://github.com/booperlv/nvim-gomove
  use("booperlv/nvim-gomove")

  -- A better user experience for viewing and interacting with Vim marks.
  -- https://github.com/chentoast/marks.nvim
  use("chentoast/marks.nvim")

  -- Bundle of two dozen new text objects for Neovim.
  -- https://github.com/chrisgrieser/nvim-various-textobjs
  use("chrisgrieser/nvim-various-textobjs")

end)
