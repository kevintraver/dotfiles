return {
  "MisanthropicBit/decipher.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      mode = { "n", "v" },
      "<leader>ee",
      function()
        require("decipher").encode_selection("base64")
      end,
    },
    {
      mode = { "n", "v" },
      "<leader>ed",
      function()
        require("decipher").decode_selection("base64")
      end,
    },
  },
}
