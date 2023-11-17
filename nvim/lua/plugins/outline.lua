return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  config = true,
  keys = {
    { "<leader>tt", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },
}
