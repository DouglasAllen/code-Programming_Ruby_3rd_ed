text = <<ET

= ARGF#pos

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.tell  -> Integer
  ARGF.pos   -> Integer

------------------------------------------------------------------------------

Returns the current offset (in bytes) of the current file in ARGF.

  ARGF.pos    #=> 0
  ARGF.gets   #=> "This is line one\n"
  ARGF.pos    #=> 17

ET

# ruby ARGF#pos.rb glark.txt

p ARGF.pos    #=> 0
p ARGF.gets   #=> "This is line one\n"
p ARGF.pos    #=> 17 
