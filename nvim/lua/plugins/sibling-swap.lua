return {
  "Wansmer/sibling-swap.nvim",
  lazy = true,
  opts = {
    use_default_keymaps = false,
  },
  keys = {
    {
      "<A-.>",
      function()
        require("sibling-swap.swap").swap_with("right")
      end,
      desc = "Swap sibling with right",
    },
    {
      "<A-,>",
      function()
        require("sibling-swap.swap").swap_with("left")
      end,
      desc = "Swap sibling with left",
    },
  },
}
