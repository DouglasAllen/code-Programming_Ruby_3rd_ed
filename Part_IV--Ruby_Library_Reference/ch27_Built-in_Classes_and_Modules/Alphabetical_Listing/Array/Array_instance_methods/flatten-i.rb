=begin

Array.flatten

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.flatten -> new_ary
  ary.flatten(level) -> new_ary

------------------------------------------------------------------------------

Returns a new array that is a one-dimensional flattening of this array
(recursively). That is, for every element that is an array, extract its
elements into the new array.  If the optional level argument determines
the level of recursion to flatten.

  s = [ 1, 2, 3 ]           #=> [1, 2, 3]
  t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
  a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
  a.flatten                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  a = [ 1, 2, [3, [4, 5] ] ]
  a.flatten(1)              #=> [1, 2, 3, [4, 5]]


=end