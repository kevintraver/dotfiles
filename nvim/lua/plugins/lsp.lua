return {
  "neovim/nvim-lspconfig",
  cond = not vim.g.vscode,
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "<D-.>", vim.lsp.buf.code_action }
  end,
}
