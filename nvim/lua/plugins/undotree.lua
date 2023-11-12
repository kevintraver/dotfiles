return {
  "jiaoshijie/undotree",
  opts = {
    float_diff = false,
    keymaps = {
      ["<tab>"] = "move_next",
      ["k"] = "move_prev",
    },
  },
  keys = {
    {
      "<D-u>",
      function()
        require("undotree").toggle()
      end,
    },
  },
}
