-- https://github.com/chrisgrieser/nvim-various-textobjs

return {
  "chrisgrieser/nvim-various-textobjs",
  event = "VeryLazy",
  opts = {
    useDefaultKeymaps = false,
  },

  vim.keymap.set({ "o", "x" }, "iS", "<cmd>lua require('various-textobjs').subword(true)<CR>"),
  vim.keymap.set({ "o", "x" }, "aS", "<cmd>lua require('various-textobjs').subword(false)<CR>"),

  vim.keymap.set({ "o" }, "L", "$"),
  vim.keymap.set({ "o" }, "H", "0"),

  vim.keymap.set({ "n", "x" }, "L", "$"),
  vim.keymap.set({ "n", "x" }, "H", "^"),

  vim.keymap.set({ "o", "x" }, "gG", "<cmd>lua require('various-textobjs').entireBuffer()<CR>"),
}
