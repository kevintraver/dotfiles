return {
  lazy = true,
  "chrisgrieser/nvim-rip-substitute",
  opts = {
    keymaps = {
      abort = "<esc>",
      insertModeConfirm = "<CR>",
    },
  },
  keys = {
    {
      "<leader>sr",
      mode = { "n", "x" },
      function()
        require("rip-substitute").sub()
      end,
      desc = "Rip Substitute",
    },
    {
      "<tab>",
      mode = { "n", "i" },
      function()
        --- @class RipSubstituteState
        --- @field cursorPositions table<number, number>
        local state = require("rip-substitute.state").state
        if state.cursorPositions == nil then
          state.cursorPositions = { [1] = 0, [2] = 0 }
        end
        local cursorPos = vim.api.nvim_win_get_cursor(state.popupWinNr)
        state.cursorPositions[cursorPos[1]] = cursorPos[2]
        local line = cursorPos[1] == 1 and 2 or 1
        local col = state.cursorPositions[line] or 0
        vim.api.nvim_win_set_cursor(state.popupWinNr, { line, col })
      end,
      ft = "rip-substitute",
    },
  },
}
