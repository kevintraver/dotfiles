-- https://github.com/gbprod/yanky.nvim

return {
  "gbprod/yanky.nvim",
  event = "VeryLazy",
  config = function()
    require("yanky").setup()

    vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
    vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
    vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
    vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")
    vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleForward)", {})
    vim.keymap.set("n", "<c-p>", "<Plug>(YankyCycleBackward)", {})
  end,
}
