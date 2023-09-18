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
      "<D-t>",
      mode = { "n", "t" },
      function()
        require("toggleterm").toggle_command("direction=horizontal")
      end,
      desc = "Toggle terminal (horizontal)",
    },
    {
      "<D-S-l>",
      mode = { "n", "t" },
      function()
        require("toggleterm").toggle_command("direction=vertical size=120")
      end,
      desc = "Toggle terminal (vertical)",
    },
    {
      "<D-C-l>",
      mode = { "n", "t" },
      function()
        require("toggleterm").toggle_command("direction=vertical size=120")
      end,
      desc = "Toggle terminal (vertical)",
    },
    {
      "<D-S-t>",
      mode = { "n", "t" },
      function()
        require("toggleterm").toggle_command("direction=vertical size=120")
      end,
      desc = "Toggle terminal (vertical)",
    },
    {
      "<leader><tab><tab>",
      mode = { "t" },
      function()
        require("toggleterm").toggle_command("direction=tab")
      end,
      desc = "Toggle terminal (tab)",
    },
  },
}
