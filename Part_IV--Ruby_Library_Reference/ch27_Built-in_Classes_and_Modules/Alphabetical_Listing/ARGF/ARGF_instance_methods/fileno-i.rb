text = <<ET

= ARGF#fileno

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.fileno    -> fixnum
  ARGF.to_i      -> fixnum

------------------------------------------------------------------------------

Returns an integer representing the numeric file descriptor for the current
file. Raises an ArgumentError if there isn't a current file.

  ARGF.fileno    #=> 3

ET

# ruby ARGF#fileno.rb 

p ARGF.fileno

# ruby ARGF#fileno.rb glark.txt 

p ARGF.fileno  
