=begin

Array.first

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.first     ->   obj or nil
  ary.first(n)  ->   new_ary

------------------------------------------------------------------------------

Returns the first element, or the first n elements, of the array. If the
array is empty, the first form returns nil, and the second form returns
an empty array.

  a = [ "q", "r", "s", "t" ]
  a.first     #=> "q"
  a.first(2)  #=> ["q", "r"]

=end