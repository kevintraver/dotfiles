local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require('telescope').load_extension('project')

local actions = require "telescope.actions"

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", ".git/.*" }
  },
  extensions = {
    project = {
      hidden_files = true
    },
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }
}

map('n', '<M-o>', [[<cmd>lua require('telescope.builtin').find_files({hidden=true})<CR>]], opts)
map('n', '<leader>f<space>', [[<cmd>lua require('telescope.builtin').resume()<CR>]], opts)

map("n", "<M-p>", [[<Cmd>lua require('telescope.builtin').commands()<CR>]], opts)
map('n', '<M-f>', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], opts)
map('n', '<M-F>', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
map('n', '<C-M-o>', [[<cmd>lua require'telescope'.extensions.project.project{}<CR>]], {noremap = true, silent = true})
map('n', '<C-M-F>', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
map('n', '<leader>fm', [[<cmd>lua require('telescope.builtin').marks()<CR>]], opts)
map('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files({hidden=true})<CR>]], opts)
map('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
map('n', '<leader>fo', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], opts)
map('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
map('n', '<leader>fk', [[<cmd>lua require('telescope.builtin').keymaps()<CR>]], opts)
map('n', '<leader>fy', [[<cmd>lua require('telescope').extensions.neoclip.default()<CR>]], opts)
map('n', '<leader>fz', [[<cmd>lua require('telescope').extensions.zoxide.list()<CR>]], opts)
map("n", "<leader>fr", [[<Cmd>lua require('telescope').extensions.frecency.frecency({ sorter = require("telescope").extensions.fzf.native_fzf_sorter() })<CR>]], opts)
map('n', '<leader>ft', [[<cmd>lua require('telescope.builtin').treesitter()<CR>]], opts)
map('n', '<leader>f/', [[<cmd>lua require('telescope.builtin').search_history()<CR>]], opts)
map('n', '<leader>fq', [[<cmd>lua require('telescope.builtin').quickfix()<CR>]], opts)

map('n', '<leader>gs', [[<cmd>lua require('telescope.builtin').git_status()<CR>]], opts)
map('n', '<leader>gl', [[<cmd>lua require('telescope.builtin').git_commits()<CR>]], opts)
map('n', '<leader>gh', [[<cmd>lua require('telescope.builtin').git_bcommits()<CR>]], opts)
map('n', '<leader>gb', [[<cmd>lua require('telescope.builtin').git_branches()<CR>]], opts)
