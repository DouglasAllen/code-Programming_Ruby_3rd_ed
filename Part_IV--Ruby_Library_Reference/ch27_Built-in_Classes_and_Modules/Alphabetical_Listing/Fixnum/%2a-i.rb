=begin

Fixnum#*

(from ruby core)
------------------------------------------------------------------------------
  fix * numeric  ->  numeric_result

------------------------------------------------------------------------------

Performs multiplication: the class of the resulting object depends onthe class
of numeric and on the magnitude of theresult.

=end

puts "
#{fn1 = 42}\n
#{fn2 = fn1 * 13}\n
#{fn2.class}\n
"