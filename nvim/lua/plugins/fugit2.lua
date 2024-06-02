return {
  "SuperBo/fugit2.nvim",
  lazy = true,
  opts = {
    width = 70,
    external_diffview = true,
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
    {
      "chrisgrieser/nvim-tinygit",
      dependencies = { "stevearc/dressing.nvim" },
    },
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
