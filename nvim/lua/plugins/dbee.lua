-- https://github.com/kndndrj/nvim-dbee

return {
  "kndndrj/nvim-dbee",
  event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim" },
  build = function()
    require("dbee").install()
  end,
  opts = {},
  keys = {
    {
      "<leader>db",
      function()
        require("dbee").open()
      end,
      "Open DBee",
    },
  },
}
