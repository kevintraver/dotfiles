-- https://github.com/NeogitOrg/neogit

return {
  "NeogitOrg/neogit",
  event = "VeryLazy",
  cond = not vim.g.vscode,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "sindrets/diffview.nvim",
  },
  config = function()
    require("neogit").setup({

      telescope_sorter = function()
        return require("telescope").extensions.fzf.native_fzf_sorter()
      end,
    })
  end,
}
