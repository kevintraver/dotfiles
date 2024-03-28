return {
  "nvim-telescope/telescope-project.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("project")
  end,
  keys = {
    {
      "<A-C-o>",
      function()
        require("telescope").extensions.project.project({})
      end,
      desc = "Projects",
    },
    {
      "<S-A-o>",
      function()
        require("telescope").extensions.project.project({})
      end,
      desc = "Projects",
    },
  },
}
