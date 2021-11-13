local config = {
  enabled = true,
  events = {"InsertLeave", "TextChanged"},
  conditions = {
    exists = true,
    filetype_is_not = {},
    modifiable = true
  },
  write_all_buffers = false,
  on_off_commands = true,
  clean_command_line_interval = 1,
  debounce_delay = 300
}

require("autosave").setup(config)
