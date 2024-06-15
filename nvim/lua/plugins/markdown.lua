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
    "toppair/peek.nvim",
    lazy = true,
    enabled = true,
    ft = "markdown",
    build = "deno task --quiet build:fast",
    opts = {
      app = "browser",
    },
    keys = {
      {
        "<leader>mp",
        function()
          require("peek").open()
        end,
        desc = "Markdown Preview",
        ft = "markdown",
      },
    },
  },

  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    enabled = false,
  },
}
