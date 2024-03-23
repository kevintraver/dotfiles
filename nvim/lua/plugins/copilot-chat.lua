return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = true,
    branch = "canary",
    config = true,
    opts = {
      show_help = false,
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
    },
  },
}
