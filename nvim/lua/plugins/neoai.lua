-- https://github.com/Bryley/neoai.nvim

return {
  "Bryley/neoai.nvim",
  cond = not vim.g.vscode,
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {},
  cmd = {
    "NeoAI",
    "NeoAIOpen",
    "NeoAIClose",
    "NeoAIToggle",
    "NeoAIContext",
    "NeoAIContextOpen",
    "NeoAIContextClose",
    "NeoAIInject",
    "NeoAIInjectCode",
    "NeoAIInjectContext",
    "NeoAIInjectContextCode",
  },
  keys = {
    { "<leader>as", desc = "summarize text" },
    { "<leader>ag", desc = "generate git message" },
  },
}
