return {
  "pmizio/typescript-tools.nvim",
  lazy = true,
  ft = {
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    settings = {
      expose_as_code_action = "all",
    },
  },
}
