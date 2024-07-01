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
    "arminveres/md-pdf.nvim",
    lazy = true,
    ft = "markdown",
    opts = {
      toc = false,
    },
    keys = {
      {
        "<leader>mP",
        function()
          require("md-pdf").convert_md_to_pdf()
        end,
        desc = "Markdown PDF",
        ft = "markdown",
      },
    },
  },

  {
    "nfrid/markdown-togglecheck",
    dependencies = {
      "nfrid/treesitter-utils",
    },
    ft = {
      "markdown",
    },
    keys = {
      {
        "<leader>mc",
        function()
          vim.go.operatorfunc = "v:lua.require'markdown-togglecheck'.toggle"
          return "g@l"
        end,
        expr = true,
        desc = "Toggle Checkbox",
        ft = "markdown",
      },
    },
  },

  {
    "lukas-reineke/headlines.nvim",
    enabled = false,
  },

  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    enabled = false,
  },
}
