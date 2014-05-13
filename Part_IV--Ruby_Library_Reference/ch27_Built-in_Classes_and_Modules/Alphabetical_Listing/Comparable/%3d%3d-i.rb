=begin

Comparable#==

(from ruby core)
------------------------------------------------------------------------------
  obj == other    -> true or false

------------------------------------------------------------------------------

Compares two objects based on the receiver's <=>method, returning true
if it returns 0. Also returns true if_obj_ and other are the same
object.

=end

puts 5 == 6
puts 6 == 5
puts 5 == 5
puts "string" == "string"