return {
  "yochem/jq-playground.nvim",
  cmd = "JqPlayground",
  keys = {
    {
      "<leader>cj",
      function()
        require("jq-playground.playground").init_playground()
      end,
    },
  },
}
