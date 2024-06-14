return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          enabled = false,
        },
      },
    },
  },
  {
    "yioneko/nvim-vtsls",
    enabled = false,
  },
}
