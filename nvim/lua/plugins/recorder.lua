return {
  "chrisgrieser/nvim-recorder",
  lazy = true,
  config = true,
  opts = {
    mapping = {
      startStopRecording = "<leader>qr",
      playMacro = "<leader>qp",
      switchSlot = "<leader>qc",
      editMacro = "<leader>qe",
      deleteAllMacros = "<leader>qd",
      yankMacro = "<leader>qy",
      addBreakPoint = "<leader>qb",
    },
  },
  keys = {
    {
      "<leader>qr",
      desc = "Start/Stop Recording",
    },
    {
      "<leader>qp",
      desc = "Play Macro",
    },
    {
      "<leader>qc",
      desc = "Switch Macro Slot",
    },
    {
      "<leader>qe",
      desc = "Edit Macro",
    },
    {
      "<leader>qd",
      desc = "Delete All Macros",
    },
    {
      "<leader>qy",
      desc = "Yank Macro",
    },
    {
      "<leader>qb",
      desc = "Insert Macro Breakpoint",
    },
  },
}
