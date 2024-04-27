return {
  "fnune/recall.nvim",
  enabled = false,
  lazy = true,
  config = true,
  cmd = {
    "RecallMark",
    "RecallUnmark",
    "RecallToggle",
    "RecallNext",
    "RecallToggle",
    "RecallPrevious",
    "RecallClear",
  },
  opts = {
    telescope = {
      mappings = {
        unmark_selected_entry = {
          normal = "x",
          insert = "<C-x>",
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
      desc = "Recall Toggle",
    },
    {
      "<leader>mn",
      function()
        require("recall").goto_next()
      end,
      desc = "Recall Goto Next",
    },
    {
      "<leader>mp",
      function()
        require("recall").goto_prev()
      end,
      desc = "Recall Goto Prev",
    },
    {
      "<leader>mx",
      function()
        require("recall").clear()
      end,
      desc = "Recall Clear",
    },
    {
      "<leader>mt",
      function()
        require("telescope").extensions.recall.recall()
      end,
      desc = "Recall Telescope",
    },
  },
}
