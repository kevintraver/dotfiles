return {
  "diegoulloao/nvim-file-location",
  vscode = true,
  lazy = true,
  opts = {
    add_line = false,
  },
  keys = {
    {
      "<C-y>",
      desc = "Copy relative file path",
      function()
        local path = require("nvim-file-location").get_file_location(
          "workdir",
          false,
          false
        )
        vim.fn.setreg("+", path)
        vim.fn.setreg('"', path)
        vim.notify(
          "Copied: " .. path,
          vim.log.levels.INFO,
          { title = "File Location" }
        )
      end,
    },
    {
      "<C-D-y>",
      desc = "Copy full file path",
      function()
        local path = require("nvim-file-location").get_file_location(
          "absolute",
          false,
          false
        )
        vim.fn.setreg("+", path)
        vim.fn.setreg('"', path)
        vim.notify(
          "Copied: " .. path,
          vim.log.levels.INFO,
          { title = "File Location" }
        )
      end,
    },
  },
}
