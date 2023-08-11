return {
  "chrisgrieser/nvim-various-textobjs",
  opts = {
    disabledKeymaps = {
      "r",
      "R",
    },
    useDefaultKeymaps = true,
  },

  vim.keymap.set({ "o", "x" }, "ri", "<cmd>lua require('various-textobjs').restOfIndentation()<CR>"),
  vim.keymap.set({ "o", "x" }, "rp", "<cmd>lua require('various-textobjs').restOfParagraph()<CR>"),
}
