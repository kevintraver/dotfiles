-- https://github.com/akinsho/toggleterm.nvim

return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  cmd = { "ToggleTerm" },
  opts = {
    size = 120,
    direction = "vertical",
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
      "<D-t>",
      mode = { "n", "t" },
      function()
        require("toggleterm").toggle_command("direction=tab")
      end,
      desc = "Toggle terminal (horizontal)",
    },
    {
      "<S-D-t>",
      mode = { "n", "t" },
      function()
        require("toggleterm").toggle_command("direction=horizontal")
      end,
      desc = "Toggle terminal (horizontal)",
    },
    {
      "<D-w>",
      mode = { "t" },
      function()
        require("toggleterm").toggle_command()
      end,
      desc = "Toggle terminal",
    },
    {
      "<D-S-l>",
      mode = { "n", "t" },
      function()
        require("toggleterm").toggle_command("direction=vertical size=120")
      end,
      desc = "Toggle terminal (vertical)",
    },
  },
}
