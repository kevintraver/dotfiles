return {
  "booperlv/nvim-gomove",
  event = "VeryLazy",
  config = function()
    require("gomove").setup()
    vim.keymap.set("n", "<A-h>", function()
      require("gomove.mappings.base").MoveLineHorizontal(-vim.v.count1)
    end)
    vim.keymap.set("n", "<A-l>", function()
      require("gomove.mappings.base").MoveLineHorizontal(vim.v.count1)
    end)
  end,
}
