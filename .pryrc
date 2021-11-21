Pry.config.editor = 'subl'
Pry.config.pager = true
Pry.commands.alias_command 'e', 'edit'

Pry.config.editor = "nvim -c 'set ft=editrubycommand'"

require 'amazing_print'

AmazingPrint.pry!

def pbcopy(input)
  str = input.to_s
  IO.popen('pbcopy', 'w') { |f| f << str }
  str
end

def pbpaste
  `pbpaste`
end