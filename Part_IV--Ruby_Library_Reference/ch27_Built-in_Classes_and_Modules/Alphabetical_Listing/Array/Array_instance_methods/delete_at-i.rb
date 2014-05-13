=begin

Array.delete_at

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.delete_at(index)  -> obj or nil

------------------------------------------------------------------------------

Deletes the element at the specified index, returning that element, or
nil if the index is out of range.
 See alsoArray#slice!.

  a = %w( ant bat cat dog )
  a.delete_at(2)    #=> "cat"
  a                 #=> ["ant", "bat", "dog"]
  a.delete_at(99)   #=> nil


=end