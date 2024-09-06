return {
  {
    "MagicDuck/grug-far.nvim",
    cmd = "GrugFar",
    keys = {
      {
        "<leader>fr",
        function()
          require("grug-far").open()
        end,
        desc = "Grug Far",
      },
      {
        "<leader>sr",
        false,
      },
    },
  },
}
