text = <<ET

= ARGF#rewind

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.rewind   -> 0

------------------------------------------------------------------------------

Positions the current file to the beginning of input, resetting ARGF.lineno to
zero.

  ARGF.readline   #=> "This is line one\n"
  ARGF.rewind     #=> 0
  ARGF.lineno     #=> 0
  ARGF.readline   #=> "This is line one\n"
 
ET
 
 # ruby ARGF#rewind.rb glark.txt
 
p ARGF.readline   #=> "This is line one\n"
p ARGF.rewind     #=> 0
p ARGF.lineno     #=> 0
p ARGF.readline   #=> "This is line one\n"
  