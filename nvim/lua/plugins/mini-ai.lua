-- https://github.com/echasnovski/mini.ai

return {
  "echasnovski/mini.ai",
  event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    local gen_spec = require("mini.ai").gen_spec
    require("mini.ai").setup({
      mappings = {
        around_last = "",
        inside_last = "",
      },
      custom_textobjects = {
        d = { "[%-%.]?%f[%d]%d+" },

        l = function(ai_type)
          local line_num = vim.fn.line(".")
          local line = vim.fn.getline(line_num)
          -- Select `\n` past the line for `a` to delete it whole
          local from_col, to_col = 1, line:len()
          if ai_type == "i" then
            if line:len() == 0 then
              -- Don't remove empty line
              from_col, to_col = 0, 0
            else
              -- Ignore indentation for `i` textobject and don't remove `\n` past the line
              from_col = line:match("^%s*()")
              to_col = line:len()
            end
          end

          return { from = { line = line_num, col = from_col }, to = { line = line_num, col = to_col } }
        end,

        g = function()
          local from = { line = 1, col = 1 }
          local to = {
            line = vim.fn.line("$"),
            col = math.max(vim.fn.getline("$"):len(), 1),
          }
          return { from = from, to = to, vis_mode = "V" }
        end,

        o = gen_spec.treesitter({
          a = { "@block.outer", "@conditional.outer", "@loop.outer" },
          i = { "@block.inner", "@conditional.inner", "@loop.inner" },
        }, {}),

        m = gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),
        c = gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),
      },
    })
  end,
}
