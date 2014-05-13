=begin

Array.delete

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.delete(obj)            -> obj or nil
  ary.delete(obj) { block }  -> obj or nil

------------------------------------------------------------------------------

Deletes items from self that are equal to obj. If any items are
found, returns obj.   If the item is not found, returns nil. If
the optional code block is given, returns the result of block if the
item is not found.  (To remove nil elements and get an informative return
value, use #compact!)

  a = [ "a", "b", "b", "b", "c" ]
  a.delete("b")                   #=> "b"
  a                               #=> ["a", "c"]
  a.delete("z")                   #=> nil
  a.delete("z") { "not found" }   #=> "not found"

=end