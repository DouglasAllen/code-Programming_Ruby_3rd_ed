=begin

Bignum#&

(from ruby core)
------------------------------------------------------------------------------
  big & numeric   ->  integer

------------------------------------------------------------------------------

Performs bitwise and between big and numeric.

=end

puts "
#{big = 123_456_789_098_765_432_101_234}\n
#{other = 123}\n
#{new_number = big & other}\n
#{new_number.class}\n
"