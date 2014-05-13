=begin

Rational#*

(from ruby core)
------------------------------------------------------------------------------
  rat * numeric  ->  numeric_result

------------------------------------------------------------------------------

Performs multiplication.

For example:

       Rational(2, 3)  * Rational(2, 3)   #=> (4/9)
       Rational(900)   * Rational(1)      #=> (900/1)
       Rational(-2, 9) * Rational(-9, 2)  #=> (1/1)
       Rational(9, 8)  * 4                #=> (9/2)
       Rational(20, 9) * 9.8              #=> 21.77777777777778

=end

puts "
#{Rational(2, 3)  * Rational(2, 3)}\n
#{Rational(900)   * Rational(1)}\n
#{Rational(-2, 9) * Rational(-9, 2)}\n
#{Rational(9, 8)  * 4}\n
#{Rational(20, 9) * 9.8}\n
"