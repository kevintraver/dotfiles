return {
  "diegoulloao/nvim-file-location",
  lazy = true,
  opts = {
    keymap = "<leader>yf",
    add_line = false,
    default_register = '"',
  },
  keys = {
    {
      "<leader>yf",
      desc = "Copy File Location (Relative) to Clipboard",
    },
    {
      "<leader>yF",
      function()
        require("nvim-file-location").copy_file_location("absolute", false, false)
      end,
      desc = "Copy File Location (Absolute) to Clipboard",
    },
    {
      "<leader>Yf",
      function()
        require("nvim-file-location").copy_file_location("relative", false, false, "*")
      end,
      desc = "Copy File Location (Absolute) to System Clipboard",
    },
    {
      "<leader>YF",
      function()
        require("nvim-file-location").copy_file_location("absolute", false, false, "*")
      end,
      desc = "Copy File Location (Absolute) to System Clipboard",
    },
  },
}
