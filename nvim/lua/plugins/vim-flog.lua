return {
  "rbong/vim-flog",
  lazy = true,
  enabled = false,
  cmd = { "Flog", "Flogsplit", "Floggit" },
  dependencies = {
    "tpope/vim-fugitive",
  },
  keys = {
    {
      "<leader>gv",
      function()
        require("flog").flog()
      end,
      desc = "Git Flog",
    },
  },
}
