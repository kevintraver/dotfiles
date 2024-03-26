return {
  "nvim-telescope/telescope.nvim",
  config = true,
  keys = {
    {
      "<A-S-f>",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Grep",
    },
    {
      "<A-C-f>",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Grep",
    },
    {
      "<A-f>",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find()
      end,
      desc = "Search Buffer",
    },
    {
      "<leader>o",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Files",
    },
    {
      "<leader>fo",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "Frecent",
    },
    {
      "<leader>gb",
      function()
        require("telescope.builtin").git_branches()
      end,
      desc = "Git Branches",
    },
    {
      "<leader>ct",
      function()
        require("telescope.builtin").filetypes()
      end,
      desc = "Filetypes",
    },
    {
      "<leader>gs",
      function()
        require("telescope.builtin").git_status()
      end,
      desc = "Git Status",
    },
    {
      "<leader>gh",
      function()
        require("telescope.builtin").git_commits()
      end,
      desc = "Git Commits",
    },
    {
      "<A-j>",
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      desc = "Goto Symbol",
    },
    {
      "<A-S-j>",
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      desc = "Goto Symbol (Workspace)",
    },
    {
      "<A-C-j>",
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      desc = "Goto Symbol (Workspace)",
    },
    {
      "<A-r>",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume",
    },
    {
      "<leader>gc",
      false,
    },
    {
      "<leader><space>",
      false,
    },
  },
}
