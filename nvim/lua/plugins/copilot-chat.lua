return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = true,
    dev = true,
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
          require("CopilotChat").ask("/COPILOT_EXPLAIN Write an explanation for the code")
        end,
        desc = "Copilot Chat - Explain Code",
      },
    },
  },
}
