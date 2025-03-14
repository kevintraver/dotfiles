return {
  "Wansmer/sibling-swap.nvim",
  vscode = true,
  lazy = true,
  opts = {
    use_default_keymaps = false,
    highlight_node_at_cursor = true,
  },
  keys = {
    {
      "<S-h>",
      function()
        require("sibling-swap.swap").swap_with("left")
      end,
      desc = "Swap Sibling with Left",
    },
    {
      "<S-l>",
      function()
        require("sibling-swap.swap").swap_with("right")
      end,
      desc = "Swap Sibling with Right",
    },
  },
}
