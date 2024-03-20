return {
  "LazyVim/LazyVim",
  keys = {
    {
      "<leader>Lu",
      function()
        require("lazy").update()
      end,
      desc = "Lazy Update",
    },
  },
}
