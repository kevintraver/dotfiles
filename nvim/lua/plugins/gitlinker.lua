-- https://github.com/ruifm/gitlinker.nvim

return {
  "ruifm/gitlinker.nvim",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    {

      "<leader>gy",
      desc = "Copy Buffer URL",
    },
    {
      "<leader>gY",
      function()
        require("gitlinker").get_repo_url()
      end,
      desc = "Copy Repo URL",
    },
    {
      "<leader>go",
      function()
        require("gitlinker").get_buf_range_url("n", { action_callback = require("gitlinker.actions").open_in_browser })
      end,
      desc = "Open File in Browser",
    },
    {
      "<leader>gO",
      function()
        require("gitlinker").get_repo_url({ action_callback = require("gitlinker.actions").open_in_browser })
      end,
      desc = "Open Repo in Browser",
    },
  },
}
