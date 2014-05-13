=begin

Array.each

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.each {|item| block }   -> ary
  ary.each                   -> an_enumerator

------------------------------------------------------------------------------

Calls block once for each element in self, passing that element
as a parameter.

If no block is given, an enumerator is returned instead.

  a = [ "a", "b", "c" ]
  a.each {|x| print x, " -- " }

produces:

  a -- b -- c --

=end