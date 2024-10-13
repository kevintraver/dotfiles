return {
  "debugloop/telescope-undo.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        undo = {
          use_delta = false,
        },
      },
    })
    require("telescope").load_extension("undo")
  end,
  keys = {
    {
      "<leader>tu",
      function()
        require("telescope").extensions.undo.undo()
      end,
      desc = "Telescope Undo",
    },
  },
}
