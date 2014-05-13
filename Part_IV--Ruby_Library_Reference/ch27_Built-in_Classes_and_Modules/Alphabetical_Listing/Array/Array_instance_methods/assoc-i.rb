=begin

Array.assoc

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.assoc(obj)   -> new_ary  or  nil

------------------------------------------------------------------------------

Searches through an array whose elements are also arrays comparing obj
with the first element of each contained array using obj.==. Returns the first
contained array that matches (that is, the first associated array), or
nil if no match is found. See also Array#rassoc.

  s1 = [ "colors", "red", "blue", "green" ]
  s2 = [ "letters", "a", "b", "c" ]
  s3 = "foo"
  a  = [ s1, s2, s3 ]
  a.assoc("letters")  #=> [ "letters", "a", "b", "c" ]
  a.assoc("foo")      #=> nil



=end