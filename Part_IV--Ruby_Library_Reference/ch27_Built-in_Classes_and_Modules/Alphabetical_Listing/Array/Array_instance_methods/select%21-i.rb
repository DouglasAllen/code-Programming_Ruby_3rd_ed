=begin

Array.select!

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.select! {|item| block } -> ary or nil
  ary.select!                 -> an_enumerator

------------------------------------------------------------------------------

Invokes the block passing in successive elements from self, 
deleting elements for which the block returns a false value. 
It returns self if changes were made,
otherwise it returns nil.
See also 
Array#keep_if

If no block is given, an enumerator is returned instead.

=end