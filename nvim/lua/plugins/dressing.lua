return {
  "stevearc/dressing.nvim",
  opts = {
    input = {
      title_pos = "center",
      relative = "editor",
      start_in_insert = true,
      mappings = {
        n = {
          ["<A-w>"] = "Close",
          ["<A-s>"] = "Confirm",
          ["<C-s>"] = "Confirm",
        },
        i = {
          ["<A-w>"] = "Close",
          ["<A-s>"] = "Confirm",
          ["<C-s>"] = "Confirm",
        },
      },
    },
  },
}
