return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  event = "VimEnter",
  opts = {
    skip_confirm_for_simple_edits = true,
    delete_to_trash = true,
    use_default_keymaps = false,
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<A-l>"] = "actions.select",
      ["<C-t>"] = "actions.select_tab",
      ["<A-p>"] = "actions.preview",
      ["<A-h>"] = "actions.parent",
      ["<A-j>"] = "j",
      ["<A-k>"] = "k",
      ["<C-A-j>"] = "j",
      ["<C-A-k>"] = "k",
      ["<C-A-Enter>"] = "actions.select",
      ["<C-q>"] = {
        callback = function()
          require("oil.actions").send_to_qflist.callback()
          vim.cmd.copen()
        end,
        desc = "Send items to quickfix and open",
      },
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
      ["<C-A-l>"] = "actions.select",
      ["<C-y>"] = {
        callback = function()
          require("oil.actions").copy_entry_filename.callback()
        end,
        desc = "Copy filename",
      },
      ["<C-A-y>"] = {
        callback = function()
          require("oil.actions").copy_entry_path.callback()
        end,
        desc = "Copy filepath",
      },
      ["<A-s>"] = {
        desc = "Save",
        callback = function()
          vim.cmd.stopinsert()
          require("oil").save()
        end,
        mode = { "n", "i" },
      },
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
