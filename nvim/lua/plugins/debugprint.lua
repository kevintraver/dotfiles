return {
  "andrewferrier/debugprint.nvim",
  lazy = true,
  config = true,
  cmd = {
    "ToggleCommentDebugPrints",
    "DeleteDebugPrints",
  },
  keys = {
    { "g?p", mode = "n", desc = "Debug Print: Plain Debug Above" },
    { "g?P", mode = "n", desc = "Debug Print: Plain Debug Below" },
    { "g?v", mode = "n", desc = "Debug Print: Variable Debug Above" },
    { "g?V", mode = "n", desc = "Debug Print: Variable Debug Below" },
    { "g?o", mode = "n", desc = "Debug Print: Text Object Below " },
    { "g?O", mode = "n", desc = "Debug Print: Text Object Above" },
    { "g?v", mode = "x", desc = "Debug Print: Variable Debug Above" },
    { "g?V", mode = "x", desc = "Debug Print: Variable Debug Below" },
  },
}
