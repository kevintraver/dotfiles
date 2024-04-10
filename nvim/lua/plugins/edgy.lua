return {
  "folke/edgy.nvim",
  event = "WinNew",
  opts = {
    bottom = {
      {
        ft = "undotreeDiff",
        size = { height = 0.4 },
      },
      {
        ft = "noice",
        size = { height = 0.4 },
        filter = function(_, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      {
        ft = "qf",
        title = "QuickFix",
        size = { height = 0.3 },
      },
      {
        ft = "trouble",
        title = "Trouble",
        size = { height = 0.3 },
      },
      {
        ft = "help",
        size = { height = 0.4 },
        -- don't open help files in edgy that we're editing
        filter = function(buf)
          return vim.bo[buf].buftype == "help"
        end,
      },
      {
        title = "Spectre",
        ft = "spectre_panel",
        size = { height = 0.4 },
      },
      {
        title = "Diff View File History",
        ft = "DiffviewFileHistory",
        size = { height = 0.4 },
      },
    },
    right = {
      {
        ft = "copilot-chat",
        title = "Copilot Chat",
        size = { width = 0.4 },
      },
      {
        ft = "Codewindow",
        title = "Mini Map",
      },
      {
        ft = "toggleterm",
        title = "Terminal",
        size = { width = 0.4 },
        filter = function(_, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
      {
        ft = "httpResult",
        title = "HTTP Result",
        size = { width = 0.4 },
      },
      {
        title = "Neotest Summary",
        ft = "neotest-summary",
      },
      {
        title = "Neotest Output",
        ft = "neotest-output-panel",
        size = { width = 0.4 },
      },
      {
        title = "Outline",
        ft = "Outline",
      },
      {
        title = "Aerial",
        ft = "aerial",
      },
    },
    left = {
      {
        ft = "undotree",
      },
      {
        ft = "NeogitStatus",
        size = { width = 0.6 },
      },
      {
        ft = "NeogitPopup",
        size = { width = 0.4 },
      },
      {
        ft = "NeogitCommitMessage",
        size = { width = 0.4 },
      },
      {
        ft = "NeogitCommitView",
        size = { width = 0.4 },
      },
      {
        title = "Diff View",
        ft = "DiffviewFiles",
      },
    },
    animate = {
      enabled = false,
    },
  },
}
