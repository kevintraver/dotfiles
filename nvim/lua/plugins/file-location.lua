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
      desc = "Copy file location (relative) to clipboard",
    },
    {
      "<leader>yF",
      function()
        require("nvim-file-location").copy_file_location("absolute", false, false)
      end,
      desc = "Copy file location (absolute) to clipboard",
    },
    {
      "<leader>Yf",
      function()
        require("nvim-file-location").copy_file_location("relative", false, false, "*")
      end,
      desc = "Copy file location (absolute) to system clipboard",
    },
    {
      "<leader>YF",
      function()
        require("nvim-file-location").copy_file_location("absolute", false, false, "*")
      end,
      desc = "Copy file location (absolute) to system clipboard",
    },
  },
}
