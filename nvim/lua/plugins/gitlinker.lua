-- https://github.com/ruifm/gitlinker.nvim

return {
  "ruifm/gitlinker.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    require("gitlinker").setup()
  end,

  keys = {
    {
      "<leader>gY",
      '<cmd>lua require"gitlinker".get_repo_url()<cr>',
      { desc = "Copy Repo URL" },
    },
    {
      "<leader>go",
      '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
      { desc = "Open File in Browser" },
    },
    {
      "<leader>gO",
      '<cmd>lua require"gitlinker".get_repo_url({action_callback = require"gitlinker.actions".open_in_browser})<cr>',
      { desc = "Open Repo in Browser" },
    },
  },
}
