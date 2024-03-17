return {
  "akinsho/toggleterm.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      "<A-t>",
      mode = { "n", "t" },
      function()
        require("toggleterm").toggle_command("direction=vertical")
      end,
      desc = "Toggle terminal",
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
      mode = { "t" },
      function()
        require("toggleterm").toggle_command()
      end,
      desc = "Toggle (close) terminal",
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
  },
}
