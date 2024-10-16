return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = true,
    enabled = false,
    branch = "canary",
    config = true,
    opts = {
      show_help = false,
      auto_insert_mode = true,
      mappings = {
        reset = {
          normal = "<C-n>",
          insert = "<C-n>",
        },
        accept_diff = {
          normal = "<C-Enter>",
          insert = "<C-Enter>",
        },
        yank_diff = {
          normal = "<C-y>",
        },
        close = {
          normal = "<A-w>",
          insert = "<A-w>",
        },
      },
    },
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    keys = {
      {
        "<leader>aa",
        false,
      },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      for _, v in ipairs(opts.right) do
        if v.ft == "copilot-chat" then
          v.size.width = 0.5
          break
        end
      end
    end,
  },
}
