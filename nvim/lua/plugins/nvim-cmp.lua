return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    { "chrisgrieser/cmp_yanky" },
    { "ray-x/cmp-treesitter" },
    { "tzachar/cmp-fuzzy-buffer" },
    { "tzachar/fuzzy.nvim" },
    { "tzachar/cmp-fuzzy-path" },
    { "f3fora/cmp-spell" },
    { "hrsh7th/cmp-emoji" },
  },
  opts = function(_, opts)
    opts.sources = require("cmp").config.sources({
      { name = "nvim_lsp", priority = 1 },
      { name = "copilot", priority = 2 },
      { name = "cmp_yanky", priority = 3 },
      { name = "treesitter", priority = 4 },
      { name = "snippets", priority = 5 },
      {
        name = "fuzzy_buffer",
        priority = 6,
        option = {
          get_bufnrs = function()
            local bufs = {}
            for _, buf in ipairs(vim.api.nvim_list_bufs()) do
              local buftype = vim.api.nvim_buf_get_option(buf, "buftype")
              if buftype ~= "nofile" and buftype ~= "prompt" then
                bufs[#bufs + 1] = buf
              end
            end
            return bufs
          end,
        },
      },
      { name = "fuzzy_path", priority = 7 },
      { name = "emoji", priority = 8 },
      { name = "spell", priority = 9 },
      { name = "lazydev", priority = 10 },
    })
  end,
}
