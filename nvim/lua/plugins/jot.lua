return {
  "letieu/jot.lua",
  lazy = true,
  keys = {
    {
      "<leader>on",
      function()
        require("jot").toggle()
      end,
      desc = "Jot",
    },
  },
}
