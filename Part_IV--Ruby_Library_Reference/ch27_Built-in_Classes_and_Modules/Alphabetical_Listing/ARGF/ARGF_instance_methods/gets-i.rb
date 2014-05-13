text = <<ET

= ARGF#gets

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.gets(sep=$/)     -> string
  ARGF.gets(limit)      -> string
  ARGF.gets(sep, limit) -> string

------------------------------------------------------------------------------

Returns the next line from the current file in ARGF.

By default lines are assumed to be separated by +$/+; to use a different
character as a separator, supply it as a String for the sep argument.

The optional  limit argument specifies how many characters of each
line to return. By default all characters are returned.

ET

# ruby ARGF#gets.rb glark.txt

p ARGF.gets 
