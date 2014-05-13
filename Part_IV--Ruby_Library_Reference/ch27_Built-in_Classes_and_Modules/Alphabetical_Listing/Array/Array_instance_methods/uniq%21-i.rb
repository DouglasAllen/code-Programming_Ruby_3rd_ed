=begin

Array.uniq!

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.uniq! -> ary or nil

------------------------------------------------------------------------------

Removes duplicate elements from self.
Returns nil if no changes are made (that is, no
duplicates are found).

  a = [ "a", "a", "b", "b", "c" ]
  
  a.uniq!   
  #=> ["a", "b", "c"]
  
  b = [ "a", "b", "c" ]
  
  b.uniq!   
  #=> nil
  
  c = [ "a:def", "a:xyz", "b:abc", "b:xyz", "c:jkl" ]
  
  c.uniq! {|s| s[/^\w+/]}  
  #=> [ "a:def", "b:abc", "c:jkl" ]

=end