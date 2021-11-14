require('coq')
vim.cmd("COQnow --shut-up")

vim.g.coq_settings = {
  auto_start = "shut-up",
  keymap = {
    jump_to_mark = "",
  },
}
