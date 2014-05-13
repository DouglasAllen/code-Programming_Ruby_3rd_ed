=begin

Array.at

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.at(index)   ->   obj  or nil

------------------------------------------------------------------------------

Returns the element at index. A negative index counts from the end of
self.  Returns nil if the index is out of range. See also
Array#[].

  a = [ "a", "b", "c", "d", "e" ]
  a.at(0)     #=> "a"
  a.at(-1)    #=> "e"
  
=end