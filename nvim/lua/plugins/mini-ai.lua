-- https://github.com/echasnovski/mini.ai

return {
  "echasnovski/mini.ai",
  event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    local gen_spec = require("mini.ai").gen_spec
    require("mini.ai").setup({
      custom_textobjects = {
        d = { "[%-%.]?%f[%d]%d+" },

        b = gen_spec.treesitter({
          a = { "@block.outer", "@conditional.outer", "@loop.outer", "@function.outer" },
          i = { "@block.inner", "@conditional.inner", "@loop.inner", "@function.inner" },
        }, {}),
        f = gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),
        c = gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),
        k = gen_spec.treesitter({ a = "@assignment.lhs", i = "@assignment.lhs" }, {}),
        v = gen_spec.treesitter({ a = "@assignment.rhs", i = "@assignment.rhs" }, {}),
      },
    })
  end,
}
