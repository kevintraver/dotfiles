-- https://github.com/williamboman/mason.nvim

return {
  "williamboman/mason.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  opts = {
    ensure_installed = {
      "stylua",
      "shfmt",
      "prettierd",
      "prisma-language-server",
      "rust-analyzer",
      "typescript-language-server",
    },
  },
}
