return {
  "johmsalas/text-case.nvim",
  config = function()
    require("textcase").setup()
    vim.keymap.set("n", "gas", "<cmd>lua require('textcase').current_word('to_snake_case')<CR>", {})
  end,
}
