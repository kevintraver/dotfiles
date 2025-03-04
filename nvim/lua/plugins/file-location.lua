return {
  "diegoulloao/nvim-file-location",
  lazy = true,
  opts = {
    add_line = false,
  },
  keys = {
    {
      "<leader>yf",
      desc = "Copy File Location (Relative) to Clipboard",
      function()
        require("nvim-file-location").copy_file_location(
          "workdir",
          false,
          false,
          "*"
        )
        require("nvim-file-location").copy_file_location(
          "workdir",
          false,
          false
        )
      end,
    },
  },
}
