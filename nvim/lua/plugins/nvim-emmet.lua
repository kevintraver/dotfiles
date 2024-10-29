return {
  {
    "neovim/nvim-lspconfig",
    enabled = false,
    opts = {
      servers = {
        emmet_language_server = {},
      },
    },
  },
  {
    "olrtg/nvim-emmet",
    enabled = false,
    event = "VeryLazy",
  },
}
