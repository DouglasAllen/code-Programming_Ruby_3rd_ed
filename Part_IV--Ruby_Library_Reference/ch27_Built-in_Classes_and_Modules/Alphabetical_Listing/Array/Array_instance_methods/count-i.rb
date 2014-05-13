=begin

Array.count

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.count      -> int
  ary.count(obj) -> int
  ary.count { |item| block }  -> int

------------------------------------------------------------------------------

Returns the number of elements.  If an argument is given, counts the number of
elements which equals to obj.  If a block is given, counts the number of
elements yielding a true value.

  ary = [1, 2, 4, 2]
  ary.count             #=> 4
  ary.count(2)          #=> 2
  ary.count{|x|x%2==0}  #=> 3

=end