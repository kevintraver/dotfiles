-- https://github.com/gbprod/yanky.nvim

return {
  "gbprod/yanky.nvim",
  opts = {
    highlight = {
      timer = 300,
    },
    preserve_cursor_position = {
      enabled = true,
    },
    system_clipboard = {
      sync_with_ring = false,
    },
  },
  keys = {
    { "<C-n>", "<Plug>(YankyCycleForward)", desc = "Cycle forward through yank history" },
    { "<C-p>", "<Plug>(YankyCycleBackward)", desc = "Cycle backward through yank history" },
    { "Y", [["+<Plug>(YankyYank)]], mode = { "n", "x" }, desc = "Yank to global clipboard" },
  },
}
