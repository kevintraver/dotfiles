return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "<D-n>", false }
    keys[#keys + 1] = { "<Leader>cc", false }
    keys[#keys + 1] = { "<D-p>", false }
    keys[#keys + 1] = { "<D-.>", vim.lsp.buf.code_action }
  end,
}
