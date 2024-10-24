return {
  "akinsho/toggleterm.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      "<A-t>",
      mode = { "n", "t" },
      function()
        require("toggleterm.terminal").Terminal
          :new({
            direction = "horizontal",
            count = 2,
            hidden = true,
          })
          :toggle()
      end,
      desc = "Toggle Terminal",
    },
    {
      "<leader><tab>t",
      function()
        require("toggleterm.terminal").Terminal
          :new({
            direction = "tab",
            count = 2,
            hidden = true,
          })
          :toggle()
      end,
      desc = "New Terminal Tab",
    },
    {
      "<A-w>",
      ft = "toggleterm",
      mode = { "t", "n" },
      function()
        require("toggleterm.terminal").Terminal
          :new({
            direction = "horizontal",
            count = 2,
            hidden = true,
          })
          :close()
      end,
      desc = "Toggle (Close) Terminal",
    },
    {
      "<A-g>",
      mode = { "n", "t" },
      function()
        require("toggleterm.terminal").Terminal
          :new({
            cmd = "lazygit",
            direction = "float",
            count = 5,
            hidden = true,
          })
          :toggle()
      end,
      desc = "Lazygit",
    },
    {
      "<A-S-e>",
      mode = { "n", "t" },
      function()
        require("toggleterm.terminal").Terminal
          :new({
            cmd = "ranger",
            direction = "float",
            count = 10,
            hidden = true,
          })
          :toggle()
      end,
      desc = "Ranger",
    },
    {
      "<C-Enter>",
      ft = { "bash", "zsh" },
      mode = { "n", "i" },
      function()
        require("toggleterm").send_lines_to_terminal("single_line", true, {})
      end,
      desc = "Send Line to Terminal",
      buffer = true,
    },
    {
      "<A-Enter>",
      ft = { "bash", "zsh" },
      mode = { "n", "i" },
      function()
        require("toggleterm").send_lines_to_terminal("single_line", true, {})
      end,
      desc = "Send Line to Terminal",
      buffer = true,
    },
  },
}
