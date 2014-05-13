=begin

 = Comparable#between?
 
 (from ruby core)
------------------------------------------------------------------------------
  obj.between?(min, max)    -> true or false

------------------------------------------------------------------------------

Returns false if  obj <=> min is less than zero or if
an Object  <=> max  is greater than zero, true otherwise.

       3.between?(1, 5)               #=> true
       6.between?(1, 5)               #=> false
       'cat'.between?('ant', 'dog')   #=> true
       'gnu'.between?('ant', 'dog')   #=> false
       
=end

puts 3.between?(1, 5)               #=> true
puts 6.between?(1, 5)               #=> false
puts 'cat'.between?('ant', 'dog')   #=> true
puts 'gnu'.between?('ant', 'dog')   #=> false