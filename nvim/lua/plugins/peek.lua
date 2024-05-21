return {
  "toppair/peek.nvim",
  lazy = true,
  enabled = true,
  ft = "markdown",
  build = "deno task --quiet build:fast",
  opts = {
    app = "browser",
  },
}
