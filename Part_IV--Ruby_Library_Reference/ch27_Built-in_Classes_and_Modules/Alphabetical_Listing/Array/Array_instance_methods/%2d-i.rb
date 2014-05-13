# Array#-.rb

=begin

Array#-

------------------------------------------------------------------------------
  ary - other_ary    -> new_ary

------------------------------------------------------------------------------

Array Difference---Returns a new array that is a copy of the original array,
removing any items that also appear in other_ary. (If you need set-like
behavior, see the library class Set.)

  [ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ]  #=>  [ 3, 3, 5 ]

=end

# ruby Array#-.rb

a1 = [ 1, 1, 2, 2, 3, 3, 4, 5 ]
a2 = [ 1, 2, 4 ]
a3 = a1 - a2
p a3