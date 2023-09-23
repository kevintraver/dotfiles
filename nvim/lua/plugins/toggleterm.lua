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
      "<C-D-h>",
      mode = { "n", "t" },
      function()
        local window_height = vim.api.nvim_get_option("lines")
        local size = math.floor(window_height * 0.40)
        require("toggleterm").toggle_command("direction=horizontal size=" .. size)
      end,
      desc = "Toggle terminal (horizontal)",
    },
    {
      "<C-D-l>",
      mode = { "n", "t" },
      function()
        local window_width = vim.api.nvim_get_option("columns")
        local size = math.floor(window_width * 0.40)
        require("toggleterm").toggle_command("direction=vertical size=" .. size)
      end,
      desc = "Toggle terminal (vertical)",
    },
    {
      "<D-w>",
      mode = { "t" },
      function()
        require("toggleterm").toggle_command()
      end,
      desc = "Toggle (close) terminal",
    },
  },
}
