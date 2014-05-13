=begin

Array.rotate!

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.rotate!(cnt=1) -> ary

------------------------------------------------------------------------------

Rotates self in place so that the element at cnt comes first,
and returns self.  If cnt is negative then it rotates in 
the opposite direction.

  a = [ "a", "b", "c", "d" ]
  
  a.rotate!        #=> ["b", "c", "d", "a"]
  a                #=> ["b", "c", "d", "a"]
  a.rotate!(2)     #=> ["d", "a", "b", "c"]
  a.rotate!(-3)    #=> ["a", "b", "c", "d"]


=end