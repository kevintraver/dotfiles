return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  config = true,
  keys = {
    {
      "<D-t>",
      mode = { "n", "t" },
      function()
        require("toggleterm").toggle_command()
      end,
      desc = "Toggle terminal",
    },
    {
      "<D-w>",
      mode = { "t" },
      function()
        require("toggleterm").toggle_command()
      end,
      desc = "Toggle (close) terminal",
    },
    {
      "<D-g>",
      mode = { "n", "t" },
      function()
        require("toggleterm.terminal").Terminal
          :new({ cmd = "lazygit", direction = "float", count = 5, hidden = true })
          :toggle()
      end,
      desc = "Lazygit",
    },
    {
      "<D-S-e>",
      mode = { "n", "t" },
      function()
        require("toggleterm.terminal").Terminal
          :new({ cmd = "ranger", direction = "float", count = 10, hidden = true })
          :toggle()
      end,
      desc = "Ranger",
    },
  },
}
