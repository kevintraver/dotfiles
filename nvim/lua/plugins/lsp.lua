return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          -- Keep insert <C-k> as delete-to-end; signature help stays on gK
          { "<c-k>", false, mode = "i" },
        },
      },
    },
  },
}
