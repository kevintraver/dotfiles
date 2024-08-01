return {
  {

    "nvim-pack/nvim-spectre",
    enabled = false,
    lazy = true,
    keys = {
      {
        "<leader>rr",
        function()
          require("spectre").open()
        end,
        desc = "Replace in Files (Spectre)",
      },
      {
        "<leader>rb",
        function()
          require("spectre").open({ path = vim.fn.expand("%:t:p") })
        end,
        desc = "Replace in Buffer (Spectre)",
      },
      {
        "<leader>rf",
        function()
          require("spectre").open_file_search()
        end,
        desc = "Replace in Files (Spectre)",
      },
      {
        "<leader>rw",
        function()
          require("spectre").open_visual({ select_word = true })
        end,
        desc = "Replace Word (Spectre)",
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.right, {
        title = "Spectre",
        ft = "spectre_panel",
        size = { width = 0.4 },
      })
    end,
  },
}
