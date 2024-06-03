return {
  "rgroli/other.nvim",
  name = "other-nvim",
  lazy = true,
  opts = {
    showMissingFiles = false,
    mappings = {
      {
        context = "test",
        pattern = "(.*).ts",
        target = "%1.test.ts",
      },
      {
        context = "implementation",
        pattern = "(.*).test.ts",
        target = "%1.ts",
      },
      {
        context = "test",
        pattern = "(.*).js",
        target = "%1.spec.js",
      },
      {
        context = "implementation",
        pattern = "(.*).spec.js",
        target = "%1.js",
      },
      {
        context = "test",
        pattern = "(.*).go$",
        target = "%1_test.go",
      },
      {
        context = "implementation",
        pattern = "(.*)_test.go$",
        target = "%1.go",
      },
    },
  },
  keys = {
    {
      "<leader>ta",
      function()
        require("other-nvim").open()
      end,
      desc = "Alternate File",
    },
    {
      "<C-t>",
      function()
        require("other-nvim").open()
      end,
      desc = "Alternate File",
    },
  },
}
