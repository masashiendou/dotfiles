require "awesome_print"
AwesomePrint.irb!

require "irb/ext/save-history"
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:EVAL_HISTORY] = 100

require "irbtools"
