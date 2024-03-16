return {
  "dwrdx/mywords.nvim",
  lazy = true,
  keys = {
    {
      "<leader>mw",
      function()
        require("mywords").hl_toggle()
      end,
      desc = "Yoink",
    },
    {
      "<leader>mx",
      function()
        require("mywords").uhl_all()
      end,
      desc = "Yoink",
    },
  },
}
