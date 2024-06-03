return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  opts = {
    servers = {
      vtsls = {
        enabled = false,
      },
    },
  },
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "<A-n>", false }
    keys[#keys + 1] = { "<A-p>", false }
  end,
}
