-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", ";", ":")

vim.keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Move Beginning of Line" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "Move End Of line" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move Left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move Right" })

-- save file
vim.keymap.set({ "n" }, "<A-s>", function()
  vim.cmd.write()
end, { desc = "Save File" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<A-w>", function()
  vim.cmd.stopinsert()
  vim.cmd.close()
end, { desc = "Close Window" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<A-C-w>", function()
  vim.cmd.stopinsert()
  vim.cmd.bdelete()
end, { desc = "Close Buffer" })

vim.keymap.set("n", "<C-Space>", function()
  vim.cmd.buffer("#")
end, { desc = "Switch to Alternate Buffer" })

-- close
vim.keymap.set({ "n", "i", "x" }, "<A-S-w>", function()
  vim.cmd.stopinsert()
  vim.cmd.bdelete()
end, { desc = "Close Buffer" })

-- quitall
vim.keymap.set({ "n", "i", "x" }, "<A-q>", function()
  vim.cmd.quitall()
end, { desc = "Quit All" })

-- new
vim.keymap.set({ "n", "i", "x" }, "<A-n>", function()
  vim.cmd.tabnew()
end, { desc = "New Tab" })

-- unmap lazyvim keymaps
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>L")

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

vim.keymap.set("n", "<Tab>", function()
  vim.cmd.tabn()
end)
vim.keymap.set("n", "<S-Tab>", function()
  vim.cmd.tabp()
end)
