return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    {
      {
        "chrisgrieser/cmp_yanky",
        event = "InsertEnter",
      },
      {
        "ray-x/cmp-treesitter",
        event = "InsertEnter",
      },
      {
        "tzachar/cmp-fuzzy-buffer",
        event = "InsertEnter",
      },
      {
        "tzachar/fuzzy.nvim",
        event = "InsertEnter",
      },
    },
  },
  opts = function(_, opts)
    opts.sources = require("cmp").config.sources(vim.list_extend(opts.sources, {
      { name = "cmp_yanky" },
      { name = "treesitter" },
      { name = "nvim_px_to_rem" },
      { name = "fuzzy_buffer" },
    }))
  end,
}
