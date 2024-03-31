return {
  "LazyVim/LazyVim",
  keys = {
    {
      "<leader>lu",
      function()
        require("lazy").update()
      end,
      desc = "Lazy Update",
    },
  },
}
