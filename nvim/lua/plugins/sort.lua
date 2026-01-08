return {
  "sQVe/sort.nvim",
  vscode = true,
  cmd = "Sort",
  dev = true,
  keys = {
    { "go", desc = "Sort operator" },
    { "gO", desc = "Sort unique operator" },
    { "go", mode = "x", desc = "Sort selection" },
    { "gO", mode = "x", desc = "Sort unique selection" },
  },
  opts = {
    mappings = {
      unique_operator = "gO", -- opt-in to unique sort operator
    },
  },
}
