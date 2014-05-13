text = <<ET

= ARGF#lineno

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.lineno -> integer

------------------------------------------------------------------------------

Returns the current line number of ARGF as a whole. This value can be set
manually with ARGF.lineno=.

For example:

  ARGF.lineno   #=> 0
  ARGF.readline #=> "This is line 1\n"
  ARGF.lineno   #=> 1

ET

# ruby ARGF#lineno.rb glark.txt
p ARGF.lineno   #=> 0
p ARGF.readline #=> "This is line 1\n"
p ARGF.lineno   #=> 1
