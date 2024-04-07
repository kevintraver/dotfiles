return {
  "stevearc/dressing.nvim",
  lazy = true,
  opts = {
    input = {
      insert_only = false,
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
