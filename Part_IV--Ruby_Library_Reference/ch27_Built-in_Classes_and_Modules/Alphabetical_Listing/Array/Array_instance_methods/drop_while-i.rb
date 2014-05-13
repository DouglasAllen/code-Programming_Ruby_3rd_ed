=begin

Array.drop_while

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.drop_while {|arr| block }   -> new_ary
  ary.drop_while                  -> an_enumerator

------------------------------------------------------------------------------

Drops elements up to, but not including, the first element for which the block
returns nil or false and returns an array containing the
remaining elements.

If no block is given, an enumerator is returned instead.

  a = [1, 2, 3, 4, 5, 0]
  a.drop_while {|i| i < 3 }   #=> [3, 4, 5, 0]

=end