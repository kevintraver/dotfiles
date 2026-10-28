return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {
    -- The defaults plus grug-far; this list replaces them
    disable_filetype = {
      "TelescopePrompt",
      "spectre_panel",
      "snacks_picker_input",
      "grug-far",
    },
  },
}
