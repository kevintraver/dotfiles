return {
  {

    "nvim-neo-tree/neo-tree.nvim",
    enabled = true,
    cmd = "Neotree",
    opts = {
      use_popups_for_input = false,
      window = {
        mappings = {
          ["s"] = "",
          ["l"] = "open",
          ["h"] = "close_node",
          ["P"] = { "toggle_preview", config = { use_float = false } },
          ["L"] = { "toggle_preview", config = { use_float = false } },
          ["v"] = "open_vsplit",
          ["<D-w>"] = "close_window",
          ["<Tab>"] = "prev_source",
          ["<S-Tab>"] = "next_source",
        },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = "disabled",
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = true,
        },
        window = {
          mappings = {
            ["<Esc>"] = "clear_filter",
            ["<D-h>"] = "navigate_up",
            ["<D-f>"] = "filter_on_submit",
            ["]h"] = "next_git_modified",
            ["[h"] = "prev_git_modified",
            ["g."] = "toggle_hidden",
          },
        },
      },
    },
    keys = {
      {
        "<D-e>",
        function()
          require("neo-tree.command").execute({
            reveal = true,
            toggle = true,
            reveal_force_cwd = true,
          })
        end,
        desc = "NeoTree (Root Dir)",
      },
      -- disable LazyVim Neo-tree keymaps
      { "<leader>e", false },
      { "<leader>E", false },
      { "<leader>fe", false },
      { "<leader>ge", false },
      { "<leader>fE", false },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      for _, v in ipairs(opts.left) do
        if v.ft == "neo-tree" then
          v.pinned = false
          break
        end
      end
    end,
  },
}
