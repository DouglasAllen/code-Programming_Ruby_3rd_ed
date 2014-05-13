text = <<ET

= ARGF#lineno=

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.lineno = number  -> nil

------------------------------------------------------------------------------

Sets the line number of ARGF as a whole to the given Integer.

ARGF sets the line number automatically as you read data, so normally you will
not need to set it explicitly. To access the current line number use
ARGF.lineno.

For example:

  ARGF.lineno      #=> 0
  ARGF.readline    #=> "This is line 1\n"
  ARGF.lineno      #=> 1
  ARGF.lineno = 0  #=> nil
  ARGF.lineno      #=> 0

ET

# ruby ARGF#lineno=.rb glark.txt

p ARGF.lineno      #=> 0
p ARGF.readline    #=> "This is line 1\n"
p ARGF.lineno      #=> 1
p ARGF.lineno = 0  #=> nil
p ARGF.lineno      #=> 0
