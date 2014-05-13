=begin

Array.transpose

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.transpose -> new_ary

------------------------------------------------------------------------------

Assumes that self is an array of arrays and transposes the
rows and columns.

  a = [[1,2], [3,4], [5,6]]
  
  a.transpose   
  #=> [[1, 3, 5], [2, 4, 6]]

=end

a = [[1,2], [3,4], [5,6]]
  
p a.transpose   
#=> [[1, 3, 5], [2, 4, 6]]

a = [[1, 3, 5], [2, 4, 6]]
p a.transpose
#=>  [[1,2], [3,4], [5,6]]