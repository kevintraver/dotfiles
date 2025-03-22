return {
  "gregorias/coerce.nvim",
  vscode = true,
  dependencies = {
    {
      "gregorias/coop.nvim",
      vscode = true,
    },
  },
  event = "VeryLazy",
  opts = {
    default_mode_keymap_prefixes = {
      normal_mode = "gu",
      motion_mode = "guo",
      visual_mode = "gu",
    },
  },
}
