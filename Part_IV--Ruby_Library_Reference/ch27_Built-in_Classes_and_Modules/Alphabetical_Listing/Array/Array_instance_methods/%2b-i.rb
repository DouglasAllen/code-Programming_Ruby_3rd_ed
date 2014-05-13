# Array#+.rb

=begin

Array#+

------------------------------------------------------------------------------
  ary + other_ary   -> new_ary

------------------------------------------------------------------------------

Concatenation---Returns a new array built by concatenating the two arrays
together to produce a third array.

  [ 1, 2, 3 ] + [ 4, 5 ]    #=> [ 1, 2, 3, 4, 5 ]

=end

# ruby %2b-i.rb

a1 = [ 1, 2, 3 ]
a2 = [ 4, 5 ]
a3 = a1 + a2
p a3
a4 = a1.+ a2
p a4