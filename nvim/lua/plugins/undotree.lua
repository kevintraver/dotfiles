return {
  "jiaoshijie/undotree",
  lazy = true,
  opts = {
    float_diff = false,
    keymaps = {
      ["<tab>"] = "move_next",
      ["k"] = "move_prev",
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
