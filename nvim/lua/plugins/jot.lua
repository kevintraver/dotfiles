return {
  "letieu/jot.lua",
  keys = {
    {
      "<leader>fj",
      function()
        require("jot").open()
      end,
      desc = "Jot",
    },
  },
}
