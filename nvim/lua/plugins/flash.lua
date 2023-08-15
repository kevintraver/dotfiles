return {
  "folke/flash.nvim",
  opts = {},
  keys = {
    { "<space>", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  },
}