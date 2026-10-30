-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "x" }, ";", ":")

-- Readline/macOS editing keys in insert and command-line mode
-- (<C-u> and <C-w> are native; see also macOS/DefaultKeyBinding.dict)
vim.keymap.set(
  { "i", "c" },
  "<C-a>",
  "<Home>",
  { desc = "Move To Beginning of Line" }
)
vim.keymap.set({ "i", "c" }, "<C-e>", "<End>", { desc = "Move To End Of Line" })
vim.keymap.set({ "i", "c" }, "<C-d>", "<Del>", { desc = "Delete Forward" })
vim.keymap.set("i", "<C-k>", "<C-o>D", { desc = "Delete To End Of Line" })
vim.keymap.set("c", "<C-k>", function()
  vim.fn.setcmdline(vim.fn.getcmdline():sub(1, vim.fn.getcmdpos() - 1))
end, { desc = "Delete To End Of Line" })

-- save file
vim.keymap.set({ "n", "i", "x" }, "<D-s>", function()
  vim.cmd.write()
end, { desc = "Save File" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<M-w>", function()
  vim.cmd.stopinsert()
  vim.cmd.close()
end, { desc = "Close Window" })

-- quitall
vim.keymap.set({ "n", "i", "x" }, "<D-q>", function()
  vim.cmd.quitall()
end, { desc = "Quit All" })

-- new
vim.keymap.set({ "n", "i", "x" }, "<D-n>", function()
  vim.cmd.tabnew()
end, { desc = "New Tab" })

-- Copy the file path, relative to its Git root unless absolute. In visual
-- mode, append the selected lines (path:12 or path:12-18).
local function copy_path(absolute)
  local path = vim.fn.expand("%:p")
  if path == "" then
    vim.notify("No file to copy", vim.log.levels.WARN)
    return
  end

  local root = vim.fs.root(0, ".git")
  if not absolute and root then
    path = path:sub(#root + 2)
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

vim.keymap.set({ "n", "x" }, "<leader>yy", function()
  copy_path(false)
end, { desc = "Copy relative file path" })
vim.keymap.set({ "n", "x" }, "<leader>yY", function()
  copy_path(true)
end, { desc = "Copy absolute file path" })

-- unmap lazyvim keymaps
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>L")

vim.keymap.del("n", "<leader>gl")
vim.keymap.del("n", "<leader>gL")

vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

vim.keymap.del("n", "<leader>qq")

-- Native H/L; buffers cycle with <C-A-h>/<C-A-l> (see bufferline.lua)
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

vim.keymap.set("n", "q", "<Nop>")

-- join lines
vim.keymap.set({ "n", "x" }, "gJ", "J", { desc = "Join Lines" })

-- Fix to be able to remap tab
vim.keymap.set("n", "<C-i>", "<C-i>")
