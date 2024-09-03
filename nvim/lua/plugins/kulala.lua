return {
  "mistweaverco/kulala.nvim",
  ft = "http",
  keys = {
    {
      ft = { "http" },
      "<C-Enter>",
      function()
        require("kulala").run()
      end,
      desc = "Send the request",
    },
    {
      ft = { "http" },
      "<A-Enter>",
      function()
        require("kulala").run()
      end,
      desc = "Send the request",
    },
  },
}
