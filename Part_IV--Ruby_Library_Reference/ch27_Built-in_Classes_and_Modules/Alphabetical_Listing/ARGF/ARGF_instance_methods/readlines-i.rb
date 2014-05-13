text = <<ET

= ARGF#readlines

(from ~/.ri)
------------------------------------------------------------------------------
  ARGF.readlines(sep=$/)     -> array
  ARGF.readlines(limit)      -> array
  ARGF.readlines(sep, limit) -> array
  ARGF.to_a(sep=$/)     -> array
  ARGF.to_a(limit)      -> array
  ARGF.to_a(sep, limit) -> array

------------------------------------------------------------------------------

Reads ARGF's current file in its entirety, returning an Array of its lines,
one line per element. Lines are assumed to be separated by sep.

  lines = ARGF.readlines
  lines[0]                #=> "This is line one\n"

ET

# ruby ARGF#readlines.rb glark.txt

lines = ARGF.readlines
p lines[0]                
p lines[1]
p lines[2]
