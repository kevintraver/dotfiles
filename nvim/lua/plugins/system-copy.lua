-- https://github.com/christoomey/vim-system-copy

return {
  "christoomey/vim-system-copy",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "Y", "<Plug>SystemCopy", {})
    vim.keymap.set("v", "Y", "<Plug>SystemCopy", {})
    vim.keymap.set("n", "YY", "<Plug>SystemCopyLine", {})
  end,
}
