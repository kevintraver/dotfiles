return {
  "williamboman/mason.nvim",
  event = "VeryLazy",
  opts = {
    ensure_installed = {
      "eslint-lsp",
      "stylua",
      "shfmt",
      "prettierd",
      "prisma-language-server",
      "rust-analyzer",
      "typescript-language-server",
    },
  },
}
