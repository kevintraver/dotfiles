-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "x" }, ";", ":")

-- macOS-like keybindings for insert mode
vim.keymap.set("i", "<C-a>", "<Home>", { desc = "Move To Beginning of Line" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "Move To End Of Line" })
vim.keymap.set("i", "<C-k>", "<C-o>D", { desc = "Delete To End Of Line" })
vim.keymap.set("i", "<C-u>", "<C-u>", { desc = "Delete To Beginning of Line" })
vim.keymap.set("i", "<C-w>", "<C-w>", { desc = "Delete Word Backwards" })
vim.keymap.set("i", "<C-l>", "<Del>", { desc = "Delete Right" })

-- save file
vim.keymap.set({ "n", "i", "o" }, "<D-s>", function()
  vim.cmd.write()
end, { desc = "Save File" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<D-w>", function()
  vim.cmd.stopinsert()
  vim.cmd.close()
end, { desc = "Close Window" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<D-C-w>", function()
  vim.cmd.stopinsert()
  vim.cmd.bdelete()
end, { desc = "Close Buffer" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<D-S-w>", function()
  vim.cmd.stopinsert()
  vim.cmd.bdelete()
end, { desc = "Close Buffer" })

-- quitall
vim.keymap.set({ "n", "i", "x" }, "<D-q>", function()
  vim.cmd.quitall()
end, { desc = "Quit All" })

-- new
vim.keymap.set({ "n", "i", "x" }, "<D-n>", function()
  vim.cmd.tabnew()
end, { desc = "New Tab" })

-- unmap lazyvim keymaps
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>L")

vim.keymap.del("n", "<leader>gl")
vim.keymap.del("n", "<leader>gL")

vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

vim.keymap.del("n", "<leader>qq")

vim.keymap.set("n", "q", "<Nop>", { noremap = true, silent = true })

-- join lines
vim.keymap.set({ "n", "x" }, "gJ", "J", { desc = "Join Lines" })

-- Open/Edit HTTP Requests
vim.keymap.set("n", "<leader>er", function()
  local root_dir = LazyVim.root.git()
  local requests_folder = root_dir .. "/.requests"
  local requests_file = root_dir .. "/.requests.http"
  if vim.fn.isdirectory(requests_folder) == 1 then
    vim.cmd.tabnew(requests_folder)
  else
    if vim.fn.filereadable(requests_file) == 0 then
      local file = io.open(requests_file, "w")
      if file then
        file:write("GET http://localhost:3000")
        file:close()
      end
    end
    vim.cmd.tabnew(requests_file)
  end
end, { desc = "Open/Edit HTTP Request" })

-- Fix to be able to remap tab
vim.keymap.set("n", "<C-i>", "<C-i>")

-- vim.keymap.set("n", "<Tab>", function()
--   vim.cmd.tabn()
-- end)
--
-- vim.keymap.set("n", "<S-Tab>", function()
--   vim.cmd.tabp()
-- end)

-- insert date
vim.keymap.set("i", "<C-g>d", '<C-r>=strftime("%F")<CR>')

-- insert date and time
vim.keymap.set("i", "<C-g>t", '<C-r>=strftime("%d/%m/%y %H:%M:%S")<CR>')

vim.keymap.set("n", "<leader>lL", function()
  vim.cmd.LspRestart()
end, { desc = "Restart LSP" })
