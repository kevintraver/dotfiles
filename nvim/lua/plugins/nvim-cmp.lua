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
    require("cmp").setup.filetype({
      "copilot-chat",
      "chatgpt-input",
    }, {
      enabled = false,
    })

    -- remove path and buffer added by LazyVim
    local remove_sources = {
      buffer = true,
      path = true,
    }
    for i = #opts.sources, 1, -1 do
      if remove_sources[opts.sources[i].name] then
        table.remove(opts.sources, i)
      end
    end

    table.insert(opts.sources, {
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
    })
    table.insert(opts.sources, { name = "fuzzy_path" })
    table.insert(opts.sources, { name = "treesitter" })
    table.insert(opts.sources, { name = "cmp_yanky" })
  end,
}
