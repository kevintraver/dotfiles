-- https://github.com/nvim-telescope/telescope.nvim

return {
  "telescope.nvim",
  cond = not vim.g.vscode,
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    "nvim-telescope/telescope-frecency.nvim",
    "kkharji/sqlite.lua",
  },
  config = function()
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("frecency")
  end,

  keys = {
    { "<leader><space>", "<cmd>Telescope frecency workspace=CWD<CR>", desc = "Frecent" },
  },
}
