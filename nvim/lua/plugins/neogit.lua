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

    if not vim.g.vscode then
      local neogit = require("neogit")

      vim.keymap.set("n", "<leader>gg", function()
        neogit.open()
      end, { desc = "Neogit Open" })

      vim.keymap.set("n", "<leader>gc", function()
        neogit.open({ "commit" })
      end, { desc = "Neogit Open" })
    end
  end,
}
