text = <<ET

 ARGF#readline

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.readline(sep=$/)     -> string
  ARGF.readline(limit)      -> string
  ARGF.readline(sep, limit) -> string

------------------------------------------------------------------------------

Returns the next line from the current file in ARGF.

By default lines are assumed to be separated by +$/+; to use a different
character as a separator, supply it as a String for the sep argument.

The optional  limit argument specifies how many characters of each
line to return. By default all characters are returned.

An EOFError is raised at the end of the file.
 
ET