=begin

Array.take_while

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.take_while {|arr| block }   -> new_ary
  ary.take_while                  -> an_enumerator

------------------------------------------------------------------------------

Passes elements to the block until the block returns nil or
false, then stops iterating and returns an array of all prior elements.

If no block is given, an enumerator is returned instead.

  a = [1, 2, 3, 4, 5, 0]
  
  a.take_while {|i| i < 3 }   
  #=> [1, 2]

=end