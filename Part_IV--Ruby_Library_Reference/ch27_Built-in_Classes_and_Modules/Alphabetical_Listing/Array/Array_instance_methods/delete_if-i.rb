=begin

Array.delete_if

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.delete_if {|item| block }  -> ary
  ary.delete_if                  -> an_enumerator

------------------------------------------------------------------------------

Deletes every element of self for which block evaluates to true.
The array is changed instantly every time the block is called and not
after the iteration is over.
See also Array#reject!

If no block is given, an enumerator is returned instead.

  a = [ "a", "b", "c" ]
  a.delete_if {|x| x >= "b" }   #=> ["a"]

=end