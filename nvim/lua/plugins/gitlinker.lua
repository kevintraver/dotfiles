return {
  "ruifm/gitlinker.nvim",
  lazy = true,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = true,
  keys = {
    {
      "<leader>gy",
      mode = { "n", "v" },
      desc = "Copy Buffer URL",
    },
    {
      "<leader>gY",
      mode = { "n", "v" },
      function()
        require("gitlinker").get_repo_url()
      end,
      desc = "Copy Repo URL",
    },
    {
      "<leader>go",
      mode = { "n", "v" },
      function()
        require("gitlinker").get_buf_range_url("n", {
          action_callback = require("gitlinker.actions").open_in_browser,
        })
      end,
      desc = "Open File in Browser",
    },
    {
      "<leader>gO",
      mode = { "n", "v" },
      function()
        require("gitlinker").get_repo_url({
          action_callback = require("gitlinker.actions").open_in_browser,
        })
      end,
      desc = "Open Repo in Browser",
    },
  },
}
