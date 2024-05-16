return {
  "MisanthropicBit/decipher.nvim",
  lazy = true,
  config = true,
  keys = {
    {
      mode = { "n", "v" },
      "<leader>De",
      function()
        require("decipher").encode_selection("base64")
      end,
      desc = "Encode Selection Base64",
    },
    {
      mode = { "n", "v" },
      "<leader>Dd",
      function()
        require("decipher").decode_selection("base64")
      end,
      desc = "Decode Selection Base64",
    },
  },
}
