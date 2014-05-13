=begin

Array.slice!

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.slice!(index)         -> obj or nil
  ary.slice!(start, length) -> new_ary or nil
  ary.slice!(range)         -> new_ary or nil

------------------------------------------------------------------------------

Deletes the element(s) given by an index (optionally with a length)
or by a range. Returns the deleted object (or objects), 
or nil if the index is out of range.

  a = [ "a", "b", "c" ]
  
  a.slice!(1)     #=> "b"
  a               #=> ["a", "c"]
  a.slice!(-1)    #=> "c"
  a               #=> ["a"]
  a.slice!(100)   #=> nil
  a               #=> ["a"]


=end

  a = [ "a", "b", "c" ]
  
  a.slice!(1)     
  #=> "b"
  
  a               
  #=> ["a", "c"]
  
  a.slice!(-1)    
  #=> "c"
  
  a               
  #=> ["a"]
  
  a.slice!(100)   
  #=> nil
  
  a               
  #=> ["a"]
