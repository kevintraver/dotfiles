return {
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown",
    lazy = true,
    config = true,
  },

  {
    "MeanderingProgrammer/markdown.nvim",
    lazy = true,
    ft = "markdown",
    name = "render-markdown",
    config = true,
    keys = {
      {
        "<leader>um",
        function()
          require("render-markdown").toggle()
        end,
        desc = "Toggle Render Markdown",
        ft = "markdown",
      },
      {
        "<leader>mt",
        function()
          require("render-markdown").toggle()
        end,
        desc = "Toggle Render Markdown",
        ft = "markdown",
      },
    },
  },

  {
    "ChuufMaster/markdown-toc",
    config = true,
    ft = "markdown",
  },

  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    enabled = false,
  },
}
