return {
  "jvgrootveld/telescope-zoxide",
  lazy = true,
  config = function()
    require("telescope").load_extension("zoxide")
  end,
  keys = {
    {
      "<leader>fz",
      function()
        require("telescope").extensions.zoxide.list()
      end,
      desc = "Zoxide",
    },
  },
}
