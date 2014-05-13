=begin

Array.uniq

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.uniq   -> new_ary

------------------------------------------------------------------------------

Returns a new array by removing duplicate values in self.

  a = [ "a", "a", "b", "b", "c" ]
  
  a.uniq   
  #=> ["a", "b", "c"]
  
  c = [ "a:def", "a:xyz", "b:abc", "b:xyz", "c:jkl" ]
  
  c.uniq {|s| s[/^\w+/]}  
  #=> [ "a:def", "b:abc", "c:jkl" ]

=end