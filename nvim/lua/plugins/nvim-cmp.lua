return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    { "chrisgrieser/cmp_yanky" },
    { "ray-x/cmp-treesitter" },
    { "tzachar/cmp-fuzzy-buffer" },
    { "tzachar/fuzzy.nvim" },
    { "tzachar/cmp-fuzzy-path" },
    { "SergioRibera/cmp-dotenv" },
    { "f3fora/cmp-spell" },
  },
  opts = function(_, opts)
    opts.sources = require("cmp").config.sources({
      { name = "nvim_lsp" },
      { name = "snippets" },
      { name = "cmp_yanky" },
      { name = "fuzzy_buffer" },
      { name = "fuzzy_path" },
      { name = "treesitter" },
      { name = "dotenv" },
      { name = "spell" },
      { name = "copilot" },
    })
  end,
}
