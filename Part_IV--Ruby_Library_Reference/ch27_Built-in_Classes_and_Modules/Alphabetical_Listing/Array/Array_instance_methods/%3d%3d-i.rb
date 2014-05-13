=begin

Array.==

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary == other_ary   ->   bool

------------------------------------------------------------------------------

Equality---Two arrays are equal if they contain the same number of elements and
if each element is equal to (according to Object.==) the corresponding element
in the other array.

  [ "a", "c" ]    == [ "a", "c", 7 ]     #=> false
  [ "a", "c", 7 ] == [ "a", "c", 7 ]     #=> true
  [ "a", "c", 7 ] == [ "a", "d", "f" ]   #=> false


=end