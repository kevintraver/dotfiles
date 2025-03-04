return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  event = "VimEnter",
  opts = {
    view_options = {
      show_hidden = true,
    },
    skip_confirm_for_simple_edits = true,
    delete_to_trash = true,
    use_default_keymaps = false,
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<D-l>"] = "actions.select",
      ["<C-t>"] = {
        callback = function()
          local dir = require("oil").get_current_dir()
          require("oil").close()
          require("toggleterm.terminal").Terminal
            :new({ dir = dir, count = 4, direction = "vertical" })
            :toggle()
        end,
        desc = "Open directory in toggle term",
      },
      ["<D-e>"] = {
        callback = function()
          local dir = require("oil").get_current_dir()
          require("neo-tree.command").execute({
            reveal = true,
            dir = dir,
            toggle = true,
          })
        end,
        desc = "Open directory in toggle term",
      },
      ["<D-t>"] = {
        callback = function()
          local dir = require("oil").get_current_dir()
          require("oil").close()
          require("toggleterm.terminal").Terminal
            :new({ dir = dir, count = 4, direction = "vertical" })
            :toggle()
        end,
        desc = "Open directory in toggle term",
      },
      ["<D-p>"] = "actions.preview",
      ["<D-h>"] = "actions.parent",
      ["<D-j>"] = "j",
      ["<D-k>"] = "k",
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
      ["<D-w>"] = "actions.close",
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
      ["<D-s>"] = {
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
      "<D-h>",
      function()
        require("oil").open()
      end,
      desc = "Open Oil",
    },
  },
}
