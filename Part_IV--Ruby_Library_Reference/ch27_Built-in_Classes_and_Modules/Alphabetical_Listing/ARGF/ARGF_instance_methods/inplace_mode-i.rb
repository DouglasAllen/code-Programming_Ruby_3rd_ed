text = <<ET

= ARGF#inplace_mode

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.inplace_mode  -> String

------------------------------------------------------------------------------

Returns the file extension appended to the names of modified files under
inplace-edit mode. This value can be set using ARGF.inplace_mode= or passing
the -i switch to the Ruby binary.

ET

# ruby ARGF#inplace_mode.rb glark.txt.bak

ARGF.inplace_mode = '.bak'
p ARGF.inplace_mode 
