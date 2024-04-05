return {
  "letieu/jot.lua",
  keys = {
    {
      "<leader><space>",
      function()
        require("jot").toggle()
      end,
      desc = "Jot",
    },
  },
}
