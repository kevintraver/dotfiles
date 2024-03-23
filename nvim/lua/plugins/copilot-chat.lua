return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    config = true,
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
