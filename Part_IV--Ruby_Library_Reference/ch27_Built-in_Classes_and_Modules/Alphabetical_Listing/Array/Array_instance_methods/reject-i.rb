=begin

Array.reject

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.reject {|item| block }  -> new_ary
  ary.reject                  -> an_enumerator

------------------------------------------------------------------------------

Returns a new array containing the items in self
for which the block is not true.
See also Array#delete_if

If no block is given, an enumerator is returned instead.

=end