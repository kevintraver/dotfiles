-- https://github.com/lewis6991/gitsigns.nvim

return {
  "lewis6991/gitsigns.nvim",
  cond = not vim.g.vscode,
  event = "VeryLazy",
  config = function()
    require("gitsigns").setup()
    vim.keymap.set({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
  end,
}
