-- Operator-pending line jump: labels the lines below (`down`) or above the
-- cursor, and operates on whole lines up to the picked one, like `dVj`
---@param down boolean
local function line_jump(down)
  require("flash").jump({
    search = {
      mode = "search",
      max_length = 0,
      multi_window = false,
    },
    label = {
      after = { 0, 0 },
    },
    -- line numbers, since flash moves the cursor while it searches
    pattern = "\\%" .. (down and ">" or "<") .. vim.fn.line(".") .. "l^",
    jump = {
      inclusive = false,
    },
    action = function(match, state)
      -- only once a line is picked: force the motion linewise
      vim.cmd("normal! V")
      require("flash.jump").jump(match, state)
      require("flash.jump").on_jump(state)
    end,
  })
end

return {
  "folke/flash.nvim",
  -- Fork adds flash.textobject(), used by ir/ar below
  url = "https://github.com/kevintraver/flash.nvim",
  branch = "feat/textobject",
  event = "VeryLazy",
  opts = {
    modes = {
      search = {
        enabled = true,
      },
      char = {
        jump_labels = true,
        label = { exclude = "" },
      },
    },
  },
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      false,
    },
    {
      "s",
      mode = { "n" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "s",
      mode = { "o", "x" },
      function()
        require("flash").treesitter({
          remote_op = {
            restore = true,
          },
        })
      end,
      desc = "Flash Treesitter",
    },
    {
      "r",
      mode = "o",
      function()
        require("flash").treesitter_search({
          remote_op = {
            restore = true,
          },
        })
      end,
      desc = "Flash Treesitter",
    },
    {
      "ir",
      mode = { "o", "x" },
      function()
        require("flash").textobject({
          around = false,
        })
      end,
      desc = "Flash Textobject",
    },
    {
      "ar",
      mode = { "o", "x" },
      function()
        require("flash").textobject({
          around = true,
        })
      end,
      desc = "Flash Textobject",
    },
    {
      "S",
      mode = { "n", "o", "x" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "R",
      mode = { "o" },
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    {
      "j",
      mode = { "o" },
      function()
        line_jump(true)
      end,
      desc = "Flash Jump (Line Down)",
    },
    {
      "k",
      mode = { "o" },
      function()
        line_jump(false)
      end,
      desc = "Flash Jump (Line Up)",
    },
    {
      "<C-s>",
      mode = { "i" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "<C-s>",
      mode = { "n" },
      function()
        require("flash").jump()
        vim.cmd.startinsert()
      end,
      desc = "Flash",
    },
  },
}
