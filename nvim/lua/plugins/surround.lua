return {
  "kylechui/nvim-surround",
  vscode = true,
  event = "VeryLazy",
  init = function()
    vim.g.nvim_surround_no_mappings = true
  end,
  opts = {
    move_cursor = false,
  },
  keys = {
    { "<C-g>s", "<Plug>(nvim-surround-insert)", mode = "i" },
    { "<C-g>S", "<Plug>(nvim-surround-insert-line)", mode = "i" },
    { "gs", "<Plug>(nvim-surround-normal)", mode = "n" },
    { "gsl", "<Plug>(nvim-surround-normal-cur)", mode = "n" },
    { "gsL", "<Plug>(nvim-surround-normal-line)", mode = "n" },
    { "gSS", "<Plug>(nvim-surround-normal-cur-line)", mode = "n" },
    { "gs", "<Plug>(nvim-surround-visual)", mode = "v" },
    { "gsl", "<Plug>(nvim-surround-visual-line)", mode = "v" },
    { "gsd", "<Plug>(nvim-surround-delete)", mode = "n" },
    { "gsc", "<Plug>(nvim-surround-change)", mode = "n" },
    { "gsC", "<Plug>(nvim-surround-change-line)", mode = "n" },
  },
}
