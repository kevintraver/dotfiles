return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  opts = {
    use_default_keymaps = false,
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-l>"] = "actions.select_vsplit",
      ["<C-t>"] = "actions.select_tab",
      ["<C-p>"] = "actions.preview",
      ["<S-p>"] = "actions.preview",
      ["<D-h>"] = "actions.parent",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
    },
  },
  keys = {
    {
      "<D-h>",
      function()
        require("oil").open()
      end,
      desc = "Open Oil",
    },
  },
}
