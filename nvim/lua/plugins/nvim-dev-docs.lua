return {
  "luckasRanarison/nvim-devdocs",
  lazy = true,
  cmd = {
    "DevdocsFetch",
    "DevdocsInstall",
    "DevdocsUninstall",
    "DevdocsOpen",
    "DevdocsOpenFloat",
    "DevdocsOpenCurrent",
    "DevdocsOpenCurrentFloat",
    "DevdocsToggle",
    "DevdocsUpdate",
    "DevdocsUpdateAll",
  },
  opts = {
    after_open = function()
      vim.keymap.set({ "n" }, "jk", function()
        vim.cmd.close()
      end, { buffer = true, desc = "Close" })
      vim.keymap.set({ "n" }, "q", function()
        vim.cmd.close()
      end, { buffer = true, desc = "Close" })
      vim.keymap.set({ "n" }, "<esc>", function()
        vim.cmd.close()
      end, { buffer = true, desc = "Close" })
    end,
  },
}
