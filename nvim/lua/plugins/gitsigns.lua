return {
  "lewis6991/gitsigns.nvim",
  event = "LazyFile",
  keys = {
    {
      mode = { "n" },
      "]]",
      function()
        require("gitsigns").next_hunk()
      end,
      desc = "Next Hunk",
    },
    {
      "[[",
      mode = { "n" },
      function()
        require("gitsigns").prev_hunk()
      end,
      desc = "Prev Hunk",
    },
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
      "<leader>br",
      function()
        require("gitsigns").reset_buffer()
      end,
      desc = "Reset Buffer",
    },
    {
      "<leader>hp",
      function()
        require("gitsigns").preview_hunk()
      end,
      desc = "Preview Hunk Inline",
    },
    {
      "<leader>hP",
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
    {
      "ah",
      mode = { "o", "x" },
      function()
        require("gitsigns").select_hunk()
      end,
      desc = "GitSigns Select Hunk",
    },
    {
      "ghs",
      mode = { "n", "v" },
      function()
        require("gitsigns").stage_hunk()
      end,
      desc = "Stage Hunk",
    },
    {
      "ghr",
      mode = { "n", "v" },
      function()
        require("gitsigns").reset_hunk()
      end,
      desc = "Reset Hunk",
    },
    {
      "ghS",
      function()
        require("gitsigns").stage_buffer()
      end,
      desc = "Stage Buffer",
    },
    {
      "ghu",
      function()
        require("gitsigns").undo_stage_hunk()
      end,
      desc = "Undo Stage Hunk",
    },
    {
      "ghR",
      function()
        require("gitsigns").reset_buffer()
      end,
      desc = "Reset Buffer",
    },
    {
      "ghp",
      function()
        require("gitsigns").preview_hunk_inline()
      end,
      desc = "Preview Hunk Inline",
    },
    {
      "ghb",
      function()
        require("gitsigns").blame_line({ full = true })
      end,
      desc = "Blame Line",
    },
    {
      "ghd",
      function()
        require("gitsigns").diffthis()
      end,
      desc = "Diff This",
    },
    {
      "ghD",
      function()
        require("gitsigns").diffthis("~")
      end,
      desc = "Diff This ~",
    },
  },
}
