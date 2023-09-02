-- https://github.com/nvim-telescope/telescope.nvim

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.2",
  cond = not vim.g.vscode,
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-fzf-native.nvim" },
  config = function()
    require("telescope").setup()
    require("telescope").load_extension("fzf")

    vim.keymap.set("n", "<A-o>", require("telescope.builtin").find_files, {})
  end,
}
