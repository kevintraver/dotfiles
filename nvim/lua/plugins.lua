return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'ggandor/lightspeed.nvim'

  use 'machakann/vim-sandwich'

  use({
    "gbprod/substitute.nvim",
    config = function()
      require("substitute").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end
  })

  use 'tommcdo/vim-exchange'

  use 'chaoren/vim-wordmotion'

end)