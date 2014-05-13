=begin

Array.replace

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.replace(other_ary)  -> ary

------------------------------------------------------------------------------

Replaces the contents of self with the contents of other_ary,
truncating or expanding if necessary.

  a = [ "a", "b", "c", "d", "e" ]
  a.replace([ "x", "y", "z" ])   #=> ["x", "y", "z"]
  a                              #=> ["x", "y", "z"]

=end