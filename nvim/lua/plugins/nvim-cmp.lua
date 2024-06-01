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
    local cmp = require("cmp")
    opts.sources = cmp.config.sources({
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
    opts.mapping = cmp.mapping.preset.insert({
      ["<C-n>"] = cmp.mapping.select_next_item({
        behavior = cmp.SelectBehavior.Insert,
      }),
      ["<C-p>"] = cmp.mapping.select_prev_item({
        behavior = cmp.SelectBehavior.Insert,
      }),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<C-y>"] = LazyVim.cmp.confirm(),
      ["<S-CR>"] = LazyVim.cmp.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
      }),
      ["<C-CR>"] = function(fallback)
        cmp.abort()
        fallback()
      end,
    })
  end,
}
