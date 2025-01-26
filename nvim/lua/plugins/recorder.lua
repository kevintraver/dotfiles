return {
  "chrisgrieser/nvim-recorder",
  lazy = true,
  config = true,
  opts = {
    mapping = {
      startStopRecording = "<leader>mr",
      playMacro = "<C-m>",
      switchSlot = "<leader>mc",
      editMacro = "<leader>me",
      deleteAllMacros = "<leader>md",
      yankMacro = "<leader>my",
      addBreakPoint = "<leader>mb",
    },
  },
  keys = {
    {
      "<leader>rr",
      desc = "Start/Stop Recording",
    },
    {
      "<C-m>",
      desc = "Play Macro",
    },
    {
      "<leader>rs",
      desc = "Switch Macro Slot",
    },
    {
      "<leader>re",
      desc = "Edit Macro",
    },
    {
      "<leader>rd",
      desc = "Delete All Macros",
    },
    {
      "<leader>ry",
      desc = "Yank Macro",
    },
    {
      "<leader>rb",
      desc = "Insert Macro Breakpoint",
    },
  },
}
