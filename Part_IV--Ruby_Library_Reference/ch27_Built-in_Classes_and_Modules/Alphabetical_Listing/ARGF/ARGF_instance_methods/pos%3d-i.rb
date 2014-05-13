text = <<ET


= ARGF#pos=

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.pos = position  -> Integer

------------------------------------------------------------------------------

Seeks to the position given by position (in bytes) in ARGF.

For example:

  ARGF.pos = 17
  ARGF.gets   #=> "This is line two\n"
  
ET

# ruby ARGF#pos=.rb glark.txt

p ARGF.pos = 31
p ARGF.gets   #=> "This is line two\n"
