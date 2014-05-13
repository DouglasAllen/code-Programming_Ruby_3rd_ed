=begin

Array.map

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.collect {|item| block }  -> new_ary
  ary.map     {|item| block }  -> new_ary
  ary.collect                  -> an_enumerator
  ary.map                      -> an_enumerator

------------------------------------------------------------------------------

Invokes block once for each element of self. Creates a new array
containing the values returned by the block.
See also
Enumerable#collect.

If no block is given, an enumerator is returned instead.

  a = [ "a", "b", "c", "d" ]
  a.collect {|x| x + "!" }   #=> ["a!", "b!", "c!", "d!"]
  a                          #=> ["a", "b", "c", "d"]

=end