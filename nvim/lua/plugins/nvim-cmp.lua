return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    {
      "chrisgrieser/cmp_yanky",
      lazy = true,
    },
    {
      "ray-x/cmp-treesitter",
      lazy = true,
    },
  },
  opts = function(_, opts)
    opts.sources = require("cmp").config.sources(vim.list_extend(opts.sources, {
      { name = "cmp_yanky" },
      { name = "treesitter" },
    }))
  end,
}
