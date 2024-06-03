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
      { name = "treesitter" },
      { name = "dotenv" },
      { name = "spell" },
      { name = "copilot" },
    })
  end,
}
