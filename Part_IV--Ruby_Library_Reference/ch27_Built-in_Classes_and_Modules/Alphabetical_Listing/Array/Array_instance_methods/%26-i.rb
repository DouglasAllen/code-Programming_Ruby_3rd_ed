=begin

Array#&

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary & other_ary      -> new_ary

------------------------------------------------------------------------------

Set Intersection---Returns a new array containing elements common to the two
arrays, with no duplicates.

  [ 1, 1, 3, 5 ] & [ 1, 2, 3 ]   #=> [ 1, 3 ]


=end

puts "
#{[ 1, 1, 3, 5 ] & [ 1, 2, 3 ]}\n
"