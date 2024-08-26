return {
  {
    "rest-nvim/rest.nvim",
    enabled = false,
    lazy = true,
    ft = "http",
    name = "rest-nvim",
    config = true,
    keys = {
      {
        "<C-Enter>",
        desc = "Send HTTP Request",
      },
      {
        "<A-Enter>",
        desc = "Send HTTP Request",
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.right, {
        ft = "httpResult",
        title = "HTTP Result",
        size = { width = 0.4 },
      })
    end,
  },
}
