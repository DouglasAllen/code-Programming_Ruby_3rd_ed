=begin

Array.last

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.last     ->  obj or nil
  ary.last(n)  ->  new_ary

------------------------------------------------------------------------------

Returns the last element(s) of self.
If the array is empty, the first form returns nil.

  a = [ "w", "x", "y", "z" ]
  
  a.last     #=> "z"
  a.last(2)  #=> ["y", "z"]

=end