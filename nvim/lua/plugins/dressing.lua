return {
  "stevearc/dressing.nvim",
  lazy = true,
  opts = {
    input = {
      insert_only = false,
      title_pos = "center",
      relative = "editor",
      start_in_insert = true,
      mappings = {
        n = {
          ["<A-s>"] = "Confirm",
          ["<C-s>"] = "Confirm",
        },
        i = {
          ["<A-s>"] = "Confirm",
          ["<C-s>"] = "Confirm",
        },
      },
    },
  },
}
