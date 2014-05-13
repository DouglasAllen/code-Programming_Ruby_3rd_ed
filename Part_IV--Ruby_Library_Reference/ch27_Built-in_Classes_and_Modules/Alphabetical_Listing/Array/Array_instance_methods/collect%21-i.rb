=begin

Array.collect!

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.collect! {|item| block }   -> ary
  ary.map!     {|item| block }   -> ary
  ary.collect                    -> an_enumerator
  ary.map                        -> an_enumerator

------------------------------------------------------------------------------

Invokes the block once for each element of self, replacing the element
with the value returned by block.
See also Enumerable#collect.

If no block is given, an enumerator is returned instead.

  a = [ "a", "b", "c", "d" ]
  a.collect! {|x| x + "!" }
  a             #=>  [ "a!", "b!", "c!", "d!" ]

=end