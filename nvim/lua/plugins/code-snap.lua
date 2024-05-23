return {
  "mistricky/codesnap.nvim",
  build = "make",
  enabled = false,
  lazy = true,
  opts = {
    has_breadcrumbs = false,
    watermark = "",
  },
  keys = {
    {
      "<leader>cs",
      mode = "x",
      function()
        require("codesnap").copy_into_clipboard()
      end,
      desc = "Save selected code snapshot to clipboard",
    },
    {
      "<leader>cS",
      mode = "x",
      function()
        require("codesnap").save_snapshot()
      end,
      desc = "Save selected code snapshot to file",
    },
  },
}
