return {
  "nvim-mini/mini.move",
  event = "VeryLazy",
  enabled = false,
  opts = {
    mappings = {
      line_up = "K",
      up = "K",
      down = "J",
      line_down = "J",
      left = "",
      line_left = "",
      right = "",
      line_right = "",
    },
  },
  keys = {
    {
      "K",
      desc = "Move Line Up",
    },
    {
      "J",
      desc = "Move Line Down",
    },
  },
}
