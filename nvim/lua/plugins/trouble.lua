return {
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    opts = {
      auto_preview = false,
      keys = {
        ["<Tab>"] = "next",
        ["<S-Tab>"] = "prev",
      },
    },
    keys = {
      {
        "<D-]>",
        function()
          if require("trouble").is_open() then
            require("trouble").next({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cnext)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Next Trouble/Quickfix Item",
      },
      {
        "<D-[>",
        function()
          if require("trouble").is_open() then
            require("trouble").prev({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cprev)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Previous Trouble/Quickfix Item",
      },
    },
  },
}
