return {
  "danielfalk/smart-open.nvim",
  branch = "0.3.x",
  lazy = true,
  config = function()
    require("telescope").load_extension("smart_open")
  end,
  dependencies = {
    "kkharji/sqlite.lua",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "nvim-telescope/telescope-fzy-native.nvim" },
  },
  keys = {
    {
      "<D-o>",
      function()
        require("telescope").extensions.smart_open.smart_open()
      end,
      desc = "Smart Open",
    },
  },
}
