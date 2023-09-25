-- https://github.com/chrisgrieser/nvim-tinygit

return {
  "chrisgrieser/nvim-tinygit",
  dependencies = { "stevearc/dressing.nvim" },
  keys = {
    {
      "<leader>gc",
      function()
        require("tinygit").smartCommit()
      end,
      desc = "Git Commit",
    },
  },
}
