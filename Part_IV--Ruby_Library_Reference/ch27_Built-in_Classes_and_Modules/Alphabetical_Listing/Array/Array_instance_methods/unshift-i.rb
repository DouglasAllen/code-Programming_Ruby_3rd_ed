=begin

Array.unshift

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.unshift(obj, ...)  -> ary

------------------------------------------------------------------------------

Prepends objects to the front of self,
moving other elements upwards.

  a = [ "b", "c", "d" ]
  
  a.unshift("a")   
  #=> ["a", "b", "c", "d"]
  
  a.unshift(1, 2)  
  #=> [ 1, 2, "a", "b", "c", "d"]

=end