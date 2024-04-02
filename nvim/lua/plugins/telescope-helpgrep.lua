return {
  "catgoose/telescope-helpgrep.nvim",
  config = function()
    require("telescope").load_extension("helpgrep")
  end,
  keys = {
    {
      "<leader>fh",
      function()
        require("telescope").extensions.helpgrep.grep_string()
      end,
      desc = "Help Grep (Word)",
    },
    {
      "<leader>fH",
      function()
        require("telescope").extensions.helpgrep.live_grep()
      end,
      desc = "Help Grep",
    },
  },
}
