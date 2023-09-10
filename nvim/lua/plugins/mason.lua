-- https://github.com/williamboman/mason.nvim

return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shfmt",
      "prettierd",
      "prisma-language-server",
      "typescript-language-server",
    },
  },
}
