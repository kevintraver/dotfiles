return {
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
}
