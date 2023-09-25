-- https://github.com/diegoulloao/nvim-file-location

return {
  "diegoulloao/nvim-file-location",
  opts = {
    keymap = "<leader>yp",
    add_line = false,
    default_register = '"',
  },
  keys = {
    {
      "<leader>yp",
      desc = "Copy file location (relative) to clipboard",
    },
    {
      "<leader>Yp",
      function()
        require("nvim-file-location").copy_file_location("absolute", false, false, "*")
      end,
      desc = "Copy file location (absolute) to system clipboard",
    },
  },
}
