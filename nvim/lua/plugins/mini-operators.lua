return {
  "nvim-mini/mini.operators",
  lazy = true,
  vscode = true,
  opts = {
    evaluate = { prefix = "" },
    exchange = { prefix = "" },
    multiply = { prefix = "gm" },
    replace = { prefix = "" },
    sort = { prefix = "go" },
  },
  keys = {
    {
      "gm",
      desc = "Multiply",
    },
    {
      "go",
      desc = "Sort",
    },
  },
}
