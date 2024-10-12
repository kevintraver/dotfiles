return {
  {
    "mistweaverco/kulala.nvim",
    ft = "http",
    keys = {
      {
        ft = { "http" },
        "<C-Enter>",
        function()
          require("kulala").run()
        end,
        desc = "Send the request",
      },
      {
        ft = { "http" },
        "<A-Enter>",
        function()
          require("kulala").run()
        end,
        desc = "Send the request",
      },
      {
        "<leader>Ry",
        function()
          require("kulala").copy()
        end,
        desc = "Copy request as curl",
      },
      {
        "<leader>Rp",
        function()
          require("kulala").from_curl()
        end,
        desc = "Paste from curl",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kulala_ls = {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters = {
        kulala = {
          command = "kulala-fmt",
          args = { "$FILENAME" },
          stdin = false,
        },
      },
      formatters_by_ft = {
        http = { "kulala" },
      },
    },
  },
}
