return {
  "gruvw/strudel.nvim",
  build = "npm ci",
  lazy = true,
  cmd = {
    "StrudelLaunch",
    "StrudelQuit",
    "StrudelToggle",
    "StrudelUpdate",
    "StrudelStop",
    "StrudelSetBuffer",
    "StrudelExecute",
  },
  config = function()
    require("strudel").setup()
  end,
}
