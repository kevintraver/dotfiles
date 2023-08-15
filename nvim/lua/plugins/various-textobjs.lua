return {
  "chrisgrieser/nvim-various-textobjs",
  opts = {
    useDefaultKeymaps = false,
  },

  vim.keymap.set({ "o", "x" }, "iS", "<cmd>lua require('various-textobjs').subword(true)<CR>"),
  vim.keymap.set({ "o", "x" }, "aS", "<cmd>lua require('various-textobjs').subword(false)<CR>"),

  vim.keymap.set({ "o", "x" }, "ii", "<cmd>lua require('various-textobjs').indentation(true, true)<CR>"),
  vim.keymap.set({ "o", "x" }, "ai", "<cmd>lua require('various-textobjs').indentation(false, true)<CR>"),
  vim.keymap.set({ "o", "x" }, "iI", "<cmd>lua require('various-textobjs').indentation(true, true)<CR>"),
  vim.keymap.set({ "o", "x" }, "aI", "<cmd>lua require('various-textobjs').indentation(false, false)<CR>"),

  vim.keymap.set({ "o", "x" }, "ri", "<cmd>lua require('various-textobjs').restOfIndentation()<CR>"),

  vim.keymap.set({ "o", "x" }, "rp", "<cmd>lua require('various-textobjs').restOfParagraph()<CR>"),

  vim.keymap.set({ "o" }, "l", "<cmd>lua require('various-textobjs').nearEoL()<CR>"),
  vim.keymap.set({ "o" }, "h", "^"),

  vim.keymap.set({ "o" }, "L", "$"),
  vim.keymap.set({ "o" }, "H", "^"),

  vim.keymap.set({ "n", "x" }, "L", "$"),
  vim.keymap.set({ "n", "x" }, "H", "^"),

  vim.keymap.set({ "o", "x" }, "il", "<cmd>lua require('various-textobjs').lineCharacterwise(true)<CR>"),
  vim.keymap.set({ "o", "x" }, "al", "<cmd>lua require('various-textobjs').lineCharacterwise(false)<CR>"),

  vim.keymap.set({ "o", "x" }, "ik", "<cmd>lua require('various-textobjs').key(true)<CR>"),
  vim.keymap.set({ "o", "x" }, "ak", "<cmd>lua require('various-textobjs').key(false)<CR>"),

  vim.keymap.set({ "o", "x" }, "iv", "<cmd>lua require('various-textobjs').value(true)<CR>"),
  vim.keymap.set({ "o", "x" }, "av", "<cmd>lua require('various-textobjs').value(false)<CR>"),

  vim.keymap.set({ "o", "x" }, "C", "<cmd>lua require('various-textobjs').toNextClosingBracket()<CR>"),

  vim.keymap.set({ "o", "x" }, "in", "<cmd>lua require('various-textobjs').number(true)<CR>"),
  vim.keymap.set({ "o", "x" }, "an", "<cmd>lua require('various-textobjs').number(false)<CR>"),

  vim.keymap.set({ "o", "x" }, "gG", "<cmd>lua require('various-textobjs').entireBuffer()<CR>"),
}
