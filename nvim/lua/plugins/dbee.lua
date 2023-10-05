return {
  "kndndrj/nvim-dbee",
  enabled = false,
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
