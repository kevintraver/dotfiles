return {
  "letieu/jot.lua",
  lazy = true,
  keys = {
    {
      "<leader>n",
      function()
        require("jot").toggle()
      end,
      desc = "Jot",
    },
  },
}
