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
      { name = "nvim_lsp", priority = 1 },
      { name = "snippets", priority = 2 },
      { name = "cmp_yanky", priority = 3 },
      {
        name = "fuzzy_buffer",
        priority = 4,
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
      { name = "fuzzy_path", priority = 5 },
      { name = "treesitter", priority = 6 },
      { name = "dotenv", priority = 7 },
      { name = "copilot", priority = 8 },
      { name = "spell", priority = 9 },
    })
  end,
}
