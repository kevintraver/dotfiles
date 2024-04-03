return {
  "hrsh7th/nvim-cmp",
  lazy = true,
  dependencies = {
    {
      "chrisgrieser/cmp_yanky",
    },
    {
      "ray-x/cmp-treesitter",
    },
  },
  opts = function(_, opts)
    opts.sources = require("cmp").config.sources(vim.list_extend(opts.sources, {
      { name = "cmp_yanky" },
      { name = "treesitter" },
      { name = "nvim_px_to_rem" },
    }))
  end,
}
