return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "<A-n>", false }
    keys[#keys + 1] = { "<A-p>", false }
    keys[#keys + 1] = { "<A-.>", vim.lsp.buf.code_action }
  end,
}
