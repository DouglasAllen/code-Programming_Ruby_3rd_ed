text = <<ET

= ARGF#to_i

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.fileno    -> fixnum
  ARGF.to_i      -> fixnum

------------------------------------------------------------------------------

Returns an integer representing the numeric file descriptor for the current
file. Raises an ArgumentError if there isn't a current file.

  ARGF.fileno    #=> 3

ET

# ruby ARGF#to_i.rb glark.txt

p ARGF.to_i 
