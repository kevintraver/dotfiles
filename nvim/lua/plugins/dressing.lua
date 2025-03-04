return {
  "stevearc/dressing.nvim",
  opts = {
    input = {
      title_pos = "center",
      relative = "editor",
      start_in_insert = true,
      mappings = {
        n = {
          ["<D-w>"] = "Close",
          ["<D-s>"] = "Confirm",
          ["<C-s>"] = "Confirm",
        },
        i = {
          ["<D-w>"] = "Close",
          ["<D-s>"] = "Confirm",
          ["<C-s>"] = "Confirm",
        },
      },
    },
  },
}
