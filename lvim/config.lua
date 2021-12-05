--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.builtin.lualine.options.theme = 'github'
lvim.colorscheme = "github_dimmed"

lvim.builtin.lualine.style = "default"

vim.g.gitblame_enabled = 0

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping

lvim.keys.normal_mode["<M-w>"] = "<cmd>Sayonara<CR>"
lvim.keys.normal_mode["<M-q>"] = ":qall<cr>"
lvim.keys.normal_mode["<M-w>"] = ":qall<cr>"
lvim.keys.normal_mode["<M-Q>"] = ":qall!<cr>"

lvim.keys.normal_mode["<M-o>"] = "<cmd>lua require('telescope.builtin').find_files({hidden=true})<CR>"

lvim.keys.normal_mode["<C-M-o>"] = "<cmd>lua require'telescope'.extensions.project.project{}<CR>"

lvim.keys.normal_mode["<M-f>"] = "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>"

lvim.keys.normal_mode["<M-d>"] = "<cmd>FocusSplitNicely<CR>"

lvim.builtin.telescope.defaults = {
  file_ignore_patterns = {"node_modules", ".git/.*" }
}


-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = false
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = true



-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "ruby",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = false

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheRest` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pylsp", opts)

-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { exe = "black", filetypes = { "python" } },
--   { exe = "isort", filetypes = { "python" } },
--   {
--     exe = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { exe = "flake8", filetypes = { "python" } },
--   {
--     exe = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     args = { "--severity", "warning" },
--   },
--   {
--     exe = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {

  { 'projekt0n/github-nvim-theme',
  },

  { 'lewis6991/impatient.nvim' },

  { 'chaoren/vim-wordmotion' },

  { 'kana/vim-textobj-user' },

  { 'kana/vim-textobj-entire' },

  { 'saaguero/vim-textobj-pastedtext' },

  { 'justinmk/vim-gtfo' },

  { 'christoomey/vim-system-copy' },

  { 'tami5/sqlite.lua' },

  { 'stsewd/gx-extended.vim' },

  { 'AndrewRadev/splitjoin.vim' },

  { 'jdhao/better-escape.vim', event = 'InsertEnter' },

  { 'abecodes/tabout.nvim' },

  { 'arthurxavierx/vim-caser' },

  { 'svermeulen/vim-subversive' },

  { 'tommcdo/vim-exchange' },

  { 'machakann/vim-swap' },

  { 'mizlan/iswap.nvim' },

  { 'AndrewRadev/switch.vim' },

  { 'tpope/vim-abolish' },

  { 'fedepujol/move.nvim' },

  { 'wellle/targets.vim' },

  { 'machakann/vim-sandwich',
    config = function()

      vim.api.nvim_exec(
        [[
          let g:sandwich_no_default_key_mappings = 1
          silent! nmap <unique><silent> gsd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
          silent! nmap <unique><silent> gsr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
          silent! nmap <unique><silent> gsdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
          silent! nmap <unique><silent> gsrb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

          let g:operator_sandwich_no_default_key_mappings = 1
          silent! map <unique> gsa <Plug>(operator-sandwich-add)
          silent! xmap <unique> gsd <Plug>(operator-sandwich-delete)
          silent! xmap <unique> gsr <Plug>(operator-sandwich-replace)
        ]],
        false)
    end,
  },


  {
    'wfxr/minimap.vim',
    run = "cargo install --locked code-minimap",
    config = function ()
      vim.cmd ("let g:minimap_width = 10")
      vim.cmd ("let g:minimap_auto_start = 0")
      vim.cmd ("let g:minimap_auto_start_win_enter = 1")
    end,
  },


  { 'TimUntersberger/neogit',
    config = function ()
      require("neogit").setup {
        disable_insert_on_commit = false,
        disable_commit_confirmation = true,
        integrations = {
          diffview = true
        },
        mappings = {
          status = {
            ["P"] = "PullPopup",
            ["p"] = "PushPopup",
            ["<M-s>"] = "CommitPopup"
          }
        }
      }
      vim.cmd ("autocmd FileType NeogitCommitMessage inoremap <silent><buffer> <c-k> <c-\\><c-n><cmd>lua require('tmux').move_top()<cr>" )
      vim.cmd ("autocmd FileType NeogitCommitMessage inoremap <silent><buffer> <m-k> <c-\\><c-n><cmd>lua require('tmux').move_top()<cr>" )
      vim.cmd ("autocmd FileType NeogitCommitMessage,gitcommit nnoremap <buffer> <M-s> :wq!<CR>" )
      vim.cmd ("autocmd FileType NeogitCommitMessage,gitcommit inoremap <buffer> <M-s> <c-\\><c-n>:wq!<CR>" )
    end,
  },

  { 'junegunn/gv.vim' },

  { 'tpope/vim-fugitive' },

  { 'rbong/vim-flog' },

  { 'rmagatti/igs.nvim' },

  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
      })
    end,
  },

  {
    "chentau/marks.nvim",
    config = function()
      require("marks").setup {}
    end,
  },

  { "tpope/vim-repeat" },

  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },

  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },

  { "p00f/nvim-ts-rainbow" },

  {
    "nvim-telescope/telescope-fzy-native.nvim",
    run = "make",
    event = "BufRead",
  },

  { 'jvgrootveld/telescope-zoxide' },

  {
    "nvim-telescope/telescope-project.nvim",
    event = "BufWinEnter"
  },

  { 'nvim-telescope/telescope-frecency.nvim' },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true, -- Enable 'number' for the window while peeking
        show_cursorline = true, -- Enable 'cursorline' for the window while peeking
      }
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    setup = function()
      vim.g.indent_blankline_enabled = false
    end
  },

  {
    "ahmedkhalf/lsp-rooter.nvim",
    event = "BufRead",
    config = function()
      require("lsp-rooter").setup()
    end,
  },

  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit", "gitrebase", "svn", "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },

  { 'alexghergh/nvim-tmux-navigation', config = function()
        require'nvim-tmux-navigation'.setup { }
        vim.api.nvim_set_keymap('n', "<C-h>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', "<C-j>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', "<C-k>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', "<C-l>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>", { noremap = true, silent = true })

        vim.api.nvim_set_keymap('i', "<C-h>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', "<C-j>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', "<C-k>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', "<C-l>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>", { noremap = true, silent = true })

        vim.api.nvim_set_keymap('n', "<M-h>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', "<M-j>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', "<M-k>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', "<M-l>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>", { noremap = true, silent = true })

        vim.api.nvim_set_keymap('i', "<M-h>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', "<M-j>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', "<M-k>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', "<M-l>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>", { noremap = true, silent = true })
    end
  },

  {
    "aserowy/tmux.nvim",
    config = function()
      require("tmux").setup({
        copy_sync = {
          enable = true,
          redirect_to_clipboard = false,
          sync_clipboard = false
        },
        navigation = {
          enable_default_keybindings = true,
        },
        resize = {
          enable_default_keybindings = false,
        }
      })
    end
  },

  {
    "beauwilliams/focus.nvim",
    config = function()
      require("focus").setup({
        tmux = true,
        excluded_buftypes = { 'nofile', 'prompt', 'popup', 'quickfix'}
      })
    end
  },

  { 'mhinz/vim-sayonara' },

  {
    "kwkarlwang/bufjump.nvim",
    config = function()
      require("bufjump").setup({
        forward = "<C-i>",
        backward = "<C-o>",
        on_success = nil
      })
    end,
  },

  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },


}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
