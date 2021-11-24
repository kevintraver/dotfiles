Pry.config.editor = 'subl'
Pry.config.pager = true
Pry.commands.alias_command 'e', 'edit'

Pry.config.editor = "nvim -c 'set ft=editrubycommand'"
PryKeybind.register(:EDIT, "\ee", save_input: true ) { |pi| pi.run_command('edit')};
PryKeybind.register(:EDIT_BUFFER, "\ee") { |pi| pi.run_command("edit"); Pryline.replace_buffer(pi.eval_string.chomp); pi.eval_string = '' }

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