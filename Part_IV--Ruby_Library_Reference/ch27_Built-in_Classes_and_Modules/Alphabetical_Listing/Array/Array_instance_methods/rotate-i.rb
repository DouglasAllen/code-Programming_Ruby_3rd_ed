=begin

Array.rotate

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.rotate(cnt=1) -> new_ary

------------------------------------------------------------------------------

Returns new array by rotating self so that the element at cnt in
self is the first element of the new array. If cnt is negative then it
rotates in the opposite direction.

  a = [ "a", "b", "c", "d" ]
  
  a.rotate         #=> ["b", "c", "d", "a"]
  a                #=> ["a", "b", "c", "d"]
  a.rotate(2)      #=> ["c", "d", "a", "b"]
  a.rotate(-3)     #=> ["b", "c", "d", "a"]


=end