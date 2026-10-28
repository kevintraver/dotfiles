local function copy_absolute()
  local path = vim.fn.expand("%:p")
  if path == "" then
    vim.notify("No file to copy", vim.log.levels.WARN)
    return
  end

  if vim.api.nvim_get_mode().mode:match("^[vV\022]") then
    local l1, l2 = vim.fn.line("v"), vim.fn.line(".")
    local start_line, end_line = math.min(l1, l2), math.max(l1, l2)
    path = path
      .. ":"
      .. start_line
      .. (start_line == end_line and "" or "-" .. end_line)
    vim.api.nvim_feedkeys(vim.keycode("<Esc>"), "n", false)
  end

  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end

return {
  "cajames/copy-reference.nvim",
  keys = {
    {
      "<leader>yy",
      function()
        require("copy-reference").copy(false)
      end,
      mode = "n",
      desc = "Copy relative file path",
    },
    {
      "<leader>yy",
      function()
        require("copy-reference").copy(true)
      end,
      mode = "x",
      desc = "Copy relative file path with line range",
    },
    {
      "<leader>yY",
      copy_absolute,
      mode = { "n", "x" },
      desc = "Copy absolute file path",
    },
  },
}
