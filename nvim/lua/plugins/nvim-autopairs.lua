return {
  "windwp/nvim-autopairs",
  vscode = true,
  event = "InsertEnter",
  opts = {
    disable_filetype = {
      "TelescopePrompt",
      "grug-far",
      "rip-substitute",
    },
  },
}
