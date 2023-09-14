-- https://github.com/akinsho/toggleterm.nvim

return {
  "akinsho/toggleterm.nvim",
  cmd = { "ToggleTerm" },
  opts = {
    size = 40,
  },
  keys = {
    {
      "<C-Enter>",
      function()
        require("toggleterm").send_lines_to_terminal("single_line", true, {})
      end,
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
