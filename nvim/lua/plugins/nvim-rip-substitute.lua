return {
  lazy = true,
  "chrisgrieser/nvim-rip-substitute",
  opts = {
    keymaps = {
      abort = "<esc>",
      insertModeConfirm = "<CR>",
    },
    prefill = {
      startInReplaceLineIfPrefill = true,
      alsoPrefillReplaceLine = true,
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
        local state = require("rip-substitute.state").state
        local cursorPos = vim.api.nvim_win_get_cursor(state.popupWinNr)
        local currentLine = cursorPos[1]
        local otherLine = currentLine == 1 and 2 or 1
        local otherLineLength = #vim.api.nvim_buf_get_lines(
          state.popupBufNr,
          otherLine - 1,
          otherLine,
          false
        )[1]
        vim.api.nvim_win_set_cursor(
          state.popupWinNr,
          { otherLine, otherLineLength }
        )
      end,
      ft = "rip-substitute",
    },
  },
}
