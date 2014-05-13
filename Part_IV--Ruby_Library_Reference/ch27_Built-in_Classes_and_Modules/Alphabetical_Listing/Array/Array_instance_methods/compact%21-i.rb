=begin

Array.compact!

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.compact!    -> ary  or  nil

------------------------------------------------------------------------------

Removes nil elements from the array. Returns nil if no changes
were made, otherwise returns ary.

  [ "a", nil, "b", nil, "c" ].compact! #=> [ "a", "b", "c" ]
  [ "a", "b", "c" ].compact!           #=> nil

=end