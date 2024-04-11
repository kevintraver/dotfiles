return {
  "nvim-tree/nvim-tree.lua",
  lazy = true,
  cmd = {
    "NvimTreeToggle",
    "NvimTreeFocus",
    "NvimTreeFindFile",
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        enable = true,
        git_ignored = false,
        dotfiles = true,
      },
      on_attach = function(bufnr)
        require("nvim-tree.api").config.mappings.default_on_attach(bufnr)

        vim.keymap.set("n", "l", function()
          require("nvim-tree.api").node.open.no_window_picker()
        end, {
          desc = "Open",
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true,
        })
        vim.keymap.set("n", "h", function()
          require("nvim-tree.api").node.navigate.parent()
        end, {
          desc = "Open",
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true,
        })
        vim.keymap.set("n", "]]", function()
          require("nvim-tree.api").node.navigate.git.next()
        end, {
          desc = "Next Git",
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true,
        })
        vim.keymap.set("n", "[[", function()
          require("nvim-tree.api").node.navigate.git.prev()
        end, {
          desc = "Previous Git",
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true,
        })
        vim.keymap.set("n", "<A-h>", function()
          require("nvim-tree.api").node.navigate.parent()
        end, {
          desc = "Previous Git",
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true,
        })
        vim.keymap.set("n", "<A-l>", function()
          require("nvim-tree.api").node.open.no_window_picker()
        end, {
          desc = "Previous Git",
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true,
        })
        vim.keymap.set("n", "g.", function()
          require("nvim-tree.api").tree.toggle_hidden_filter()
        end, {
          desc = "Previous Git",
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true,
        })
      end,
    })
  end,
  keys = {
    {
      "<A-b>",
      function()
        require("nvim-tree.api").tree.toggle({
          find_file = true,
          focus = true,
          update_root = true,
        })
      end,
      desc = "NvimTree",
    },
    {
      "<A-e>",
      function()
        require("nvim-tree.api").tree.toggle({
          find_file = true,
          focus = true,
          update_root = true,
        })
      end,
      desc = "NvimTree",
    },
    { "<leader>e", false },
    { "<leader>E", false },
    { "<leader>fe", false },
    { "<leader>fE", false },
  },
}
