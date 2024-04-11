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
      {
        "tzachar/cmp-fuzzy-path",
        event = "InsertEnter",
      },
    },
  },
  opts = function(_, opts)
    opts.sources = require("cmp").config.sources(vim.list_extend(opts.sources, {
      { name = "cmp_yanky" },
      { name = "treesitter" },
      {
        name = "fuzzy_buffer",
        option = {
          get_bufnrs = function()
            local bufs = {}
            for _, win in ipairs(vim.api.nvim_list_wins()) do
              bufs[vim.api.nvim_win_get_buf(win)] = true
            end
            return vim.tbl_keys(bufs)
          end,
        },
      },
      { name = "fuzzy_path" },
    }))
  end,
}
