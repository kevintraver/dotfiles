return {
  "gregorias/coerce.nvim",
  dependencies = {
    "gregorias/coop.nvim",
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
