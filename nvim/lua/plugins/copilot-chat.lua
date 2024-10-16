return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = true,
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
      {
        "<C-\\>",
        mode = { "n", "v" },
        function()
          require("CopilotChat").toggle()
        end,
        desc = "Toggle Copilot Chat",
      },
      {
        mode = { "n", "v" },
        "<leader>ae",
        function()
          local copilot_chat = require("CopilotChat")
          local config = require("CopilotChat.config")
          copilot_chat.ask(config.prompts.Explain.prompt)
        end,
        desc = "Copilot Chat - Explain Code",
      },
      {
        mode = { "n", "v" },
        "<leader>ac",
        function()
          local copilot_chat = require("CopilotChat")
          local config = require("CopilotChat.config")
          copilot_chat.ask(config.prompts.CommitStaged.prompt, {
            selection = config.prompts.CommitStaged.selection,
          })
        end,
        desc = "Copilot Chat - Generate Commit Message",
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
