return {
  "nvim-pack/nvim-spectre",
  event = "VeryLazy",
  keys = {
    {
      "<leader>rr",
      function()
        require("spectre").open()
      end,
      desc = "Replace in files (Spectre)",
    },
    {
      "<leader>rb",
      function()
        require("spectre").open({ path = vim.fn.expand("%:t:p") })
      end,
      desc = "Replace in buffer (Spectre)",
    },
    {
      "<leader>rf",
      function()
        require("spectre").open_file_search()
      end,
      desc = "Replace in files (Spectre)",
    },
    {
      "<leader>rw",
      function()
        require("spectre").open_visual({ select_word = true })
      end,
      desc = "Replace word (Spectre)",
    },
  },
}
