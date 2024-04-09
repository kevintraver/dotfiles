return {
  "letieu/jot.lua",
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
