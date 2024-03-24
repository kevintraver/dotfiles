return {
  "xiyaowong/telescope-emoji.nvim",
  lazy = true,
  config = function()
    require("telescope").setup({
      extensions = {
        emoji = {
          action = function(emoji)
            vim.fn.setreg('"', emoji.value)
            vim.api.nvim_put({ emoji.value }, "c", false, true)
          end,
        },
      },
    })
    require("telescope").load_extension("emoji")
  end,
  keys = {
    {
      "<leader>se",
      function()
        require("telescope").extensions.emoji.emoji()
      end,
      desc = "Emoji",
    },
  },
}
