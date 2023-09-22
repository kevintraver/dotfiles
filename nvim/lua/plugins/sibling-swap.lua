-- https://github.com/Wansmer/sibling-swap.nvim

return {
  "Wansmer/sibling-swap.nvim",
  event = "VeryLazy",
  opts = {
    keymaps = {
      ["<A-.>"] = "swap_with_right",
      ["<A-,>"] = "swap_with_left",
      ["<S-A-,>"] = "swap_with_right_with_opp",
      ["<S-A-.>"] = "swap_with_left_with_opp",
    },
  },
}
