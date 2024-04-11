return {
  "letieu/jot.lua",
  lazy = true,
  keys = {
    {
      "<leader><Space>",
      function()
        require("jot").toggle()
      end,
      desc = "Jot",
    },
  },
}
