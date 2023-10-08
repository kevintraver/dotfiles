return {
  "kndndrj/nvim-dbee",
  enabled = false,
  dependencies = { "MunifTanjim/nui.nvim" },
  build = function()
    require("dbee").install()
  end,
  config = true,
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
