=begin

Array.each_index

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.each_index {|index| block }  -> ary
  ary.each_index                   -> an_enumerator

------------------------------------------------------------------------------

Same as Array#each, but passes the index of the element instead of the
element itself.

If no block is given, an enumerator is returned instead.

  a = [ "a", "b", "c" ]
  a.each_index {|x| print x, " -- " }

produces:

  0 -- 1 -- 2 --

=end