return {
  "ahmedkhalf/project.nvim",
  event = "VeryLazy",
  config = function()
    require("project_nvim").setup()
  end,
  keys = {
    {
      "<leader>oP",
      function()
        require("telescope").extensions.projects.projects({})
      end,
      desc = "Projects",
    },
  },
}
