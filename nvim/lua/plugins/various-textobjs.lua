-- https://github.com/chrisgrieser/nvim-various-textobjs

return {
  "chrisgrieser/nvim-various-textobjs",
  event = "VeryLazy",
  opts = {
    useDefaultKeymaps = false,
  },

  vim.keymap.set({ "o", "x" }, "iS", "<cmd>lua require('various-textobjs').subword(true)<CR>"),
  vim.keymap.set({ "o", "x" }, "aS", "<cmd>lua require('various-textobjs').subword(false)<CR>"),

  vim.keymap.set({ "o", "x" }, "ii", "<cmd>lua require('various-textobjs').indentation('inner', 'inner')<CR>"),
  vim.keymap.set({ "o", "x" }, "ai", "<cmd>lua require('various-textobjs').indentation('outer', 'inner')<CR>"),
  vim.keymap.set({ "o", "x" }, "iI", "<cmd>lua require('various-textobjs').indentation('inner', 'outer')<CR>"),
  vim.keymap.set({ "o", "x" }, "aI", "<cmd>lua require('various-textobjs').indentation('outer', 'outer')<CR>"),
}
