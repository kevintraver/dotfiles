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

end)
