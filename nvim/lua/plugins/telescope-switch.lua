return {
  "sshelll/telescope-switch.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        switch = {
          matchers = {
            {
              name = "typescript test",
              from = "(.*).ts$",
              to = "%1.test.ts",
            },
            {
              name = "typescript implementation",
              from = "(.*).test.ts$",
              to = "%1.ts",
            },
            {
              name = "go implementation",
              from = "(.*).go$",
              to = "%1.go",
            },
            {
              name = "go test",
              from = "(.*)_test.go$",
              to = "%1.go",
            },
          },
        },
      },
    })
    require("telescope").load_extension("switch")
  end,
  keys = {
    {
      "<leader>tf",
      function()
        require("telescope").extensions.switch.switch()
      end,
      desc = "Search Alternate Files",
    },
    {
      "<leader>fa",
      function()
        require("telescope").extensions.switch.switch()
      end,
      desc = "Search Alternate Files",
    },
  },
}
