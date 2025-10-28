return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          { "K", false },
          { "<D-n>", false },
          { "<Leader>cc", false },
          { "<D-p>", false },
          { "<D-.>", vim.lsp.buf.code_action, desc = "Code Action" },
        },
      },
    },
  },
}
