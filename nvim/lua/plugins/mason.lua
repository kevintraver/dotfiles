return {
  "williamboman/mason.nvim",
  event = "VeryLazy",
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
