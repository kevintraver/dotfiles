-- Temp file from zsh's edit-command-line (/tmp resolves to /private/tmp)
if not vim.api.nvim_buf_get_name(0):match("/tmp/zsh[^/]*$") then
  return
end

local function map(lhs, close)
  vim.keymap.set({ "n", "i" }, lhs, function()
    vim.cmd.write({ bang = true })
    close()
  end, { buffer = true })
end

map("<M-w>", vim.cmd.quit)
map("<D-q>", vim.cmd.quit)
for _, lhs in ipairs({ "<D-w>", "<D-e>", "<D-Enter>", "<C-Enter>" }) do
  map(lhs, vim.cmd.bdelete)
end
