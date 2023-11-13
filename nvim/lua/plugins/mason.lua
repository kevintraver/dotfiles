return {
  "williamboman/mason.nvim",
  event = "VeryLazy",
  opts = {
    ensure_installed = {
      "eslint-lsp",
      "html-lsp",
      "htmlbeautifier",
      "json-lsp",
      "stylua",
      "shfmt",
      "prettierd",
      "prisma-language-server",
      "rust-analyzer",
      "typescript-language-server",
    },
  },
}
