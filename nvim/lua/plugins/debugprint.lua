return {
  "andrewferrier/debugprint.nvim",
  lazy = true,
  opts = {
    keymaps = {
      normal = {
        toggle_comment_debug_prints = "g?t",
        delete_debug_prints = "g?d",
      },
    },
  },
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
    { "g?t", mode = "n", desc = "Debug Print: Toggle Debug Prints" },
    { "g?d", mode = "n", desc = "Debug Print: Delete Debug Prints" },
  },
}
