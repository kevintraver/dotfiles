return {
  "MagicDuck/grug-far.nvim",
  cmd = "GrugFar",
  config = true,
  keys = {
    {
      "<leader>rg",
      function()
        require("grug-far").grug_far()
      end,
      desc = "Grug Far",
    },
  },
}
