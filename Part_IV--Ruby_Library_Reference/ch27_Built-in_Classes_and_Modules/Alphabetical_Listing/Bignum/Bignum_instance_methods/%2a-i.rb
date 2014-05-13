=begin

Bignum#*

(from ruby core)
------------------------------------------------------------------------------
  big * other  -> Numeric

------------------------------------------------------------------------------

Multiplies big and other, returning the result.

=end

puts "
#{123_456_789_098_765_432_101_234.class}\n
#{big = 123_456_789_098_765_432_101_234}\n
#{other = 123}\n
#{new_number = big * other}\n
#{new_number.class}\n
"