return {
  "jiaoshijie/undotree",
  lazy = true,
  opts = {
    float_diff = false,
    keymaps = {
      ["<tab>"] = "move_next",
      ["k"] = "move_prev",
      ["jk"] = "quit",
    },
  },
  keys = {
    {
      "<A-u>",
      function()
        require("undotree").toggle()
      end,
    },
  },
}
