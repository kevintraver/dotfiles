return {
  "fnune/recall.nvim",
  config = true,
  opts = {
    telescope = {
      mappings = {
        unmark_selected_entry = {
          normal = "d",
          insert = "<C-d>",
        },
      },
    },
  },
  keys = {
    {
      "<leader>mm",
      function()
        require("recall").toggle()
      end,
    },
    {
      "<leader>mn",
      function()
        require("recall").goto_next()
      end,
    },
    {
      "<leader>mp",
      function()
        require("recall").goto_prev()
      end,
    },
    {
      "<leader>mx",
      function()
        require("recall").clear()
      end,
    },
    {
      "<leader>mt",
      function()
        require("telescope").extensions.recall.recall()
      end,
    },
  },
}
