Pry.config.editor = 'subl'
Pry.config.pager = false

require 'amazing_print'

AmazingPrint.defaults = { :limit => true }
AmazingPrint.pry!

def pbcopy(input)
  str = input.to_s
  IO.popen('pbcopy', 'w') { |f| f << str }
  str
end

def pbpaste
  `pbpaste`
end