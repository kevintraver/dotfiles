-- https://github.com/booperlv/nvim-gomove

return {
  "booperlv/nvim-gomove",
  event = "VeryLazy",
  config = function()
    require("gomove").setup()
    vim.keymap.set("n", "<A-h>", "<cmd>lua require('gomove.mappings.base').MoveLineHorizontal(-vim.v.count1)<CR>", {})
    vim.keymap.set("n", "<A-l>", "<cmd>lua require('gomove.mappings.base').MoveLineHorizontal(vim.v.count1)<CR>", {})
  end,
}
