return {
  "gorbit99/codewindow.nvim",
  lazy = true,
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
      "<leader>uc",
      function()
        require("codewindow").toggle_minimap()
      end,
      desc = "Toggle Mini Map",
    },
  },
}
