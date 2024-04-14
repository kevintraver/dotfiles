return {
  "coffebar/neovim-project",
  enabled = false,
  lazy = false,
  opts = {
    projects = {
      "~/.dotfiles",
    },
  },
  init = function()
    vim.opt.sessionoptions:append("globals")
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
}
