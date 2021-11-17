Pry.config.editor = 'subl'
Pry.config.pager = true

Pry.config.editor = "nvr -s --remote-wait +'setlocal bufhidden=wipe' +'set ft=ruby'"

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