return {
  {
    "sourcegraph/sg.nvim",
    event = "VeryLazy",
    build = "nvim -l build/init.lua",
    config = true,
  },
}
