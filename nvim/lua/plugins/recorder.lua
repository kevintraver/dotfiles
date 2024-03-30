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
}
