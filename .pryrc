Pry.config.pager = true
Pry.commands.alias_command 'e', 'edit'

Pry.config.editor = "nvim -c 'set ft=editrubycommand'"

Pry.hooks.add_hook(:after_eval, "copy_to_tmux_buffer") do |result, pry|
  IO.popen(["tmux", "set-buffer", result.pretty_inspect])
end

require 'amazing_print'

AmazingPrint.pry!

def pbcopy(input)
  str = input.pretty_inspect
  IO.popen('pbcopy', 'w') { |f| f << str }
  str
end
