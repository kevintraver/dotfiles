return {
  "lewis6991/gitsigns.nvim",
  opts = {
    on_attach = function() end,
  },
  keys = {
    {
      mode = { "n" },
      "]h",
      function()
        require("gitsigns").next_hunk()
      end,
      desc = "Next Hunk",
    },
    {
      "[h",
      mode = { "n" },
      function()
        require("gitsigns").prev_hunk()
      end,
      desc = "Prev Hunk",
    },
    {
      "<leader>hs",
      mode = { "n", "v" },
      function()
        require("gitsigns").stage_hunk()
      end,
      desc = "Stage Hunk",
    },
    {
      "<leader>hr",
      mode = { "n", "v" },
      function()
        require("gitsigns").reset_hunk()
      end,
      desc = "Reset Hunk",
    },
    {
      "<leader>hS",
      function()
        require("gitsigns").stage_buffer()
      end,
      desc = "Stage Buffer",
    },
    {
      "<leader>hu",
      function()
        require("gitsigns").undo_stage_hunk()
      end,
      desc = "Undo Stage Hunk",
    },
    {
      "<leader>hR",
      function()
        require("gitsigns").reset_buffer()
      end,
      desc = "Reset Buffer",
    },
    {
      "<leader>hp",
      function()
        require("gitsigns").preview_hunk_inline()
      end,
      desc = "Preview Hunk Inline",
    },
    {
      "<leader>hb",
      function()
        require("gitsigns").blame_line({ full = true })
      end,
      desc = "Blame Line",
    },
    {
      "<leader>hd",
      function()
        require("gitsigns").diffthis()
      end,
      desc = "Diff This",
    },
    {
      "<leader>hD",
      function()
        require("gitsigns").diffthis("~")
      end,
      desc = "Diff This ~",
    },
    {
      "ih",
      mode = { "o", "x" },
      function()
        require("gitsigns").select_hunk()
      end,
      desc = "GitSigns Select Hunk",
    },
  },
}
