return {
  "GeorgesAlkhouri/nvim-aider",
  enabled = false,
  lazy = true,
  keys = {
    {
      "<leader>aa",
      "<cmd>AiderTerminalToggle<cr>",
      desc = "Open Aider",
    },
    {
      "<leader>as",
      mode = { "n", "v" },
      "<cmd>AiderTerminalSend<cr>",
      desc = "Send to Aider",
    },
    {
      "<leader>ac",
      "<cmd>AiderQuickSendCommand<cr>",
      desc = "Send Command To Aider",
    },
    {
      "<leader>ab",
      "<cmd>AiderQuickSendBuffer<cr>",
      desc = "Send Buffer To Aider",
    },
    {
      "<leader>af",
      "<cmd>AiderQuickAddFile<cr>",
      desc = "Add File to Aider",
    },
    {
      "<leader>ad",
      "<cmd>AiderQuickDropFile<cr>",
      desc = "Drop File from Aider",
    },
    {
      "<leader>ar",
      "<cmd>AiderQuickReadOnlyFile<cr>",
      desc = "Add File as Read-Only",
    },
  },
  config = true,
}
