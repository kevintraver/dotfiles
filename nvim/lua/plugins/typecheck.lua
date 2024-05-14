return {
  "jellydn/typecheck.nvim",
  laz = true,
  dependencies = {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  opts = {
    debug = true,
    mode = "trouble",
  },
  keys = {
    {
      "<leader>ck",
      function()
        require("typecheck").type_check()
      end,
      desc = "Run Type Check",
    },
  },
}
