return {
  "kilavila/nvim-yoink",
  lazy = true,
  keys = {
    {
      "<leader>yy",
      function()
        require("nvim-yoink").save()
      end,
      desc = "Yoink",
    },
    {
      "<leader>yo",
      function()
        require("nvim-yoink").open()
      end,
      desc = "Yoink",
    },
  },
}
