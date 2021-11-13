require 'plugins'
require 'settings'
require 'keymappings'

require 'config.telescope'
require 'config.expand-region'
require 'config.highlight-current-n'
require 'config.switch'
require 'config.comment'
require 'config.autosave'
require 'config.move'
require 'config.gitsigns'
require 'config.lualine'
require 'config.neogit'
require 'config.focus'
require 'config.tmux'
require 'config.tree'
require 'config.barbar'
 
vim.cmd [[colorscheme onenord]]
vim.cmd [[ autocmd ColorScheme * lua require'lightspeed'.init_highlight(true) ]]
