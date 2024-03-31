return {
  "CopilotC-Nvim/CopilotChat.nvim",
  lazy = true,
  branch = "canary",
  config = true,
  opts = {
    show_help = false,
    mappings = {
      reset = {
        normal = "<C-n>",
        insert = "<C-n>",
      },
    },
  },
  dependencies = {
    { "zbirenbaum/copilot.lua" },
    { "nvim-lua/plenary.nvim" },
  },
  keys = {
    {
      mode = { "n", "v" },
      "<A-\\>",
      function()
        require("CopilotChat").toggle()
      end,
      desc = "Toggle Copilot Chat",
    },
    {
      mode = { "n", "v" },
      "<Leader>\\e",
      function()
        local copilot_chat = require("CopilotChat")
        local config = require("CopilotChat.config")
        copilot_chat.ask(config.prompts.Explain.prompt)
      end,
      desc = "Copilot Chat - Explain Code",
    },
    {
      mode = { "n", "v" },
      "<Leader>\\g",
      function()
        local copilot_chat = require("CopilotChat")
        local config = require("CopilotChat.config")
        copilot_chat.ask(config.prompts.CommitStaged.prompt, {
          selection = config.prompts.CommitStaged.selection,
        })
      end,
      desc = "Copilot Chat - Commit Message",
    },
  },
}
