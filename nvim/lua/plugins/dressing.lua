return {
  "stevearc/dressing.nvim",
  lazy = true,
  opts = {
    input = {
      insert_only = false,
      start_in_insert = true,
      mappings = {
        n = {
          ["<A-s>"] = "Confirm",
        },
      },
    },
  },
}
