return {
  "folke/snacks.nvim",
  opts = {
    -- Telescope stays the main picker; Snacks only provides vim.ui.select
    picker = { enabled = true, ui_select = true },
  },
}
