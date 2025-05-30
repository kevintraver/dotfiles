return {
  "echasnovski/mini.ai",
  vscode = true,
  event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = function()
    local gen_spec = require("mini.ai").gen_spec
    return {
      mappings = {
        around_last = "ap",
        inside_last = "ip",
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
              -- Ignore indentation for `i` textobject and don't remove `\n`
              -- past the line
              from_col = line:match("^%s*()")
              to_col = line:len()
            end
          end
          return {
            from = { line = line_num, col = from_col },
            to = {
              line = line_num,
              col = to_col,
            },
          }
        end,
        g = function()
          local from = { line = 1, col = 1 }
          local to = {
            line = vim.fn.line("$"),
            col = math.max(vim.fn.getline("$"):len(), 1),
          }
          return { from = from, to = to, vis_mode = "V" }
        end,
        m = gen_spec.treesitter({
          a = "@function.outer",
          i = "@function.inner",
        }, {}),
        c = gen_spec.treesitter({
          a = "@comment.outer",
          i = "@comment.inner",
        }, {}),
        o = gen_spec.treesitter({
          a = { "@block.outer", "@conditional.outer", "@loop.outer" },
          i = { "@block.inner", "@conditional.inner", "@loop.inner" },
        }, {}),
        f = gen_spec.treesitter(
          { a = "@function.outer", i = "@function.inner" },
          {}
        ),
        t = { "<([%p%w]-)%f[^<%w][^<>]->.-</%1>", "^<.->().*()</[^/]->$" },
        e = { -- Word with case
          {
            "%u[%l%d]+%f[^%l%d]",
            "%f[%S][%l%d]+%f[^%l%d]",
            "%f[%P][%l%d]+%f[^%l%d]",
            "^[%l%d]+%f[^%l%d]",
          },
          "^().*()$",
        },
        u = gen_spec.function_call(), -- u for "Usage"
        U = gen_spec.function_call({ name_pattern = "[%w_]" }),
      },
    }
  end,
}
