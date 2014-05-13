=begin

Array.reject!

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.reject! {|item| block }  -> ary or nil
  ary.reject!                  -> an_enumerator

------------------------------------------------------------------------------

Equivalent to Array#delete_if,
deleting elements from self for which the block evaluates to true,
but returns nil if no changes were made.
The array is changed instantly every time the block is called and 
not after the iteration is over.
See also 
Enumerable#reject 
and
Array#delete_if.

If no block is given, an enumerator is returned instead.

=end