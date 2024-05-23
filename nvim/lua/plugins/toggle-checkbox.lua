return {
  "nfrid/markdown-togglecheck",
  dependencies = {
    "nfrid/treesitter-utils",
  },
  ft = {
    "markdown",
  },
  keys = {
    {
      "<C-t>",
      function()
        vim.go.operatorfunc = "v:lua.require'markdown-togglecheck'.toggle"
        return "g@l"
      end,
      expr = true,
      desc = "Toggle Checkbox",
    },
    {
      "<leader>mm",
      function()
        vim.go.operatorfunc = "v:lua.require'markdown-togglecheck'.toggle"
        return "g@l"
      end,
      expr = true,
      desc = "Toggle Checkbox",
    },
  },
}
