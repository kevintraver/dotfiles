return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  event = "VeryLazy",
  opts = {
    delete_to_trash = true,
    use_default_keymaps = false,
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-l>"] = "actions.select",
      ["<C-t>"] = "actions.select_tab",
      ["<C-p>"] = "actions.preview",
      ["<S-p>"] = "actions.preview",
      ["<A-h>"] = "actions.parent",
      ["<C-q>"] = "actions.send_to_qflist",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
      ["q"] = "actions.close",
      ["<A-w>"] = "actions.close",
      ["H"] = "actions.toggle_hidden",
    },
  },
  keys = {
    {
      "<A-h>",
      function()
        require("oil").open()
      end,
      desc = "Open Oil",
    },
  },
}
