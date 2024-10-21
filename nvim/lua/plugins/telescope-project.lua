return {
  "nvim-telescope/telescope-project.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        project = {
          mappings = {
            n = {
              ["g"] = require("telescope._extensions.project.actions").search_in_project_files,
            },
            i = {
              ["<c-g>"] = require("telescope._extensions.project.actions").search_in_project_files,
            },
          },
        },
      },
    })
    require("telescope").load_extension("project")
  end,
  keys = {
    {
      "<leader>op",
      function()
        require("telescope").extensions.project.project({})
      end,
      desc = "Projects",
    },
  },
}
