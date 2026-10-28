return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    -- Appended to LazyVim's defaults
    ensure_installed = {
      "css",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "java",
      "jsonc",
      "mermaid",
      "ruby",
      "scss",
      "sql",
    },
  },
  keys = {
    {
      "<Leader>eq",
      function()
        vim.treesitter.query.edit()
      end,
      desc = "Edit Query",
    },
  },
}
