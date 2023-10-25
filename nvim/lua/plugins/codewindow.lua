return {
  "gorbit99/codewindow.nvim",
  config = true,
  opts = {
    relative = "editor",
    events = {
      "TextChanged",
      "FileWritePost",
    },
  },
  keys = {
    {
      "<leader>um",
      function()
        require("codewindow").toggle_minimap()
      end,
      desc = "Toggle minimap",
    },
  },
}
