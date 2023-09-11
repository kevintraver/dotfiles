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
    { "Y", [["+<Plug>(YankyYank)]], mode = { "n", "x" }, desc = "Yank to global clipboard" },
  },
}
