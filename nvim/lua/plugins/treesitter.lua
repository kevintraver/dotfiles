return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- Appended to LazyVim's defaults
      ensure_installed = {
        "css",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "java",
        "jsonc",
        "mermaid",
        "ruby",
        "scss",
        "sql",
      },
    },
    keys = {
      {
        "<Leader>eq",
        function()
          vim.treesitter.query.edit()
        end,
        desc = "Edit Query",
      },
    },
  },

  {
    -- Fork supports the nvim-treesitter main branch
    "kevintraver/nvim-treesitter-textsubjects",
    dev = true,
    opts = {
      -- Default container-outer key is `;`, which shadows `;` -> `:` in visual
      keymaps = {
        ["."] = "textsubjects-smart",
        ["a;"] = "textsubjects-container-outer",
        ["i;"] = "textsubjects-container-inner",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter-textsubjects").configure(opts)
    end,
  },
}
