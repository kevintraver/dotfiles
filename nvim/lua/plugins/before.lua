return {
  "bloznelis/before.nvim",
  enabled = true,
  event = "VeryLazy",
  config = function()
    require("before").setup()
    require("telescope").load_extension("before")
  end,
  keys = {
    {
      "<C-A-o>",
      function()
        require("before").jump_to_last_edit()
      end,
      desc = "Jump to last edit",
    },
    {
      "<C-A-i>",
      function()
        require("before").jump_to_next_edit()
      end,
      desc = "Jump to next edit",
    },
  },
}
