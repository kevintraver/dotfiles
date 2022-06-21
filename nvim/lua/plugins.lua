return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'ggandor/lightspeed.nvim'

  use 'machakann/vim-sandwich'

  use({
    "gbprod/substitute.nvim",
    config = function()
      require("substitute").setup()
    end
  })

  use 'chaoren/vim-wordmotion'

end)