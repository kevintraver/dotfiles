-- https://github.com/akinsho/toggleterm.nvim

return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  cmd = { "ToggleTerm" },
  opts = {
    size = 40,
  },
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
      mode = { "n", "t" },
      "<D-t>",
      function()
        require("toggleterm").toggle_command()
      end,
      desc = "Toggle terminal",
    },
  },
}
