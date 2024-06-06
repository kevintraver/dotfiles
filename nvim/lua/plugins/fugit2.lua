return {
  "SuperBo/fugit2.nvim",
  lazy = true,
  opts = {
    width = 70,
    external_diffview = true,
  },
  cmd = { "Fugit2", "Fugit2Diff", "Fugit2Graph" },
  keys = {
    {
      "<A-g>",
      function()
        require("fugit2").git_status()
      end,
      desc = "Fugit",
    },
  },
}
