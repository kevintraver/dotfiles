return {
  "ghostbuster91/nvim-next",
  enabled = false,
  event = "VeryLazy",
  config = function()
    require("nvim-next").setup({
      default_mappings = {
        repeat_style = "original",
      },
      items = {
        require("nvim-next.builtins").f,
        require("nvim-next.builtins").t,
      },
    })
  end,
}
