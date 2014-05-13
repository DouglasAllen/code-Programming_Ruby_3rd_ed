=begin

Array.fetch

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.fetch(index)                    -> obj
  ary.fetch(index, default )          -> obj
  ary.fetch(index) {|index| block }   -> obj

------------------------------------------------------------------------------

Tries to return the element at position index. If the index lies outside
the array, the first form throws an IndexError exception, the second
form returns default, and the third form returns the value of
invoking the block, passing in the index. Negative values of index count
from the end of the array.

  a = [ 11, 22, 33, 44 ]
  a.fetch(1)               #=> 22
  a.fetch(-1)              #=> 44
  a.fetch(4, 'cat')        #=> "cat"
  a.fetch(4) { |i| i*i }   #=> 16


=end