return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  cmd = { "ToggleTerm" },
  keys = {
    {
      "<C-Enter>",
      desc = "Send line to terminal",
    },
    {
      "<D-Enter>",
      desc = "Send line to terminal",
    },
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
  },
}
