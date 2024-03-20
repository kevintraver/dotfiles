return {
  "rest-nvim/rest.nvim",
  lazy = true,
  ft = "http",
  name = "rest-nvim",
  dependencies = { "vhyrro/luarocks.nvim" },
  opts = {
    encode_url = false,
  },
  keys = {
    {
      "<C-Enter>",
      desc = "Send HTTP Request",
    },
    {
      "<A-Enter>",
      desc = "Send HTTP Request",
    },
  },
}
