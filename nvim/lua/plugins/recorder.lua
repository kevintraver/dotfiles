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
      "<leader>mr",
      desc = "Start/Stop Recording",
    },
    {
      "<C-m>",
      desc = "Play Macro",
    },
    {
      "<leader>ms",
      desc = "Switch Macro Slot",
    },
    {
      "<leader>me",
      desc = "Edit Macro",
    },
    {
      "<leader>md",
      desc = "Delete All Macros",
    },
    {
      "<leader>my",
      desc = "Yank Macro",
    },
    {
      "<leader>mb",
      desc = "Insert Macro Breakpoint",
    },
  },
}
