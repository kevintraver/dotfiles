return {
  "natecraddock/workspaces.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("workspaces")
  end,
  keys = {
    {
      "<leader>fw",
      function()
        require("telescope").extensions.workspaces.workspaces()
      end,
      desc = "Workspaces",
    },
  },
}
