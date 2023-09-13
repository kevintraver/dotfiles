-- https://github.com/famiu/bufdelete.nvim

return {
  "famiu/bufdelete.nvim",
  keys = {
    {
      "<D-w>",
      function()
        require("bufdelete").bufdelete(0, true)
      end,
    },
  },
}
