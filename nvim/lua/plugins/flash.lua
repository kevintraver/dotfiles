return {
  "folke/flash.nvim",
  event = "VeryLazy",
  vscode = true,
  opts = {
    modes = {
      search = {
        enabled = true,
      },
      char = {
        jump_labels = true,
        label = { exclude = "" },
      },
    },
  },
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      false,
    },
    {
      "s",
      mode = { "n" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "s",
      mode = { "o", "x" },
      function()
        require("flash").treesitter({
          remote_op = {
            restore = true,
          },
        })
      end,
      desc = "Flash Treesitter",
    },
    {
      "r",
      mode = { "o" },
      false,
    },
    {
      "r",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search({
          remote_op = {
            restore = true,
          },
        })
      end,
      desc = "Flash Treesitter",
    },
    {
      "S",
      mode = { "n", "o", "x" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "R",
      mode = { "o" },
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    {
      "j",
      mode = { "o" },
      function()
        require("flash").jump({
          search = {
            mode = "search",
            max_length = 0,
          },
          label = {
            after = { 0, 0 },
          },
          pattern = "^",
        })
      end,
      desc = "Flash Jump (Line)",
    },
    {
      "<C-s>",
      mode = { "i" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "<C-s>",
      mode = { "n" },
      function()
        require("flash").jump()
        vim.cmd.startinsert()
      end,
      desc = "Flash",
    },
  },
}
