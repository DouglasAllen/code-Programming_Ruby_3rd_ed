# Regexp#to_s.rb

=begin

= Regexp#to_s

(from ~/.ri)
------------------------------------------------------------------------------
  rxp.to_s   -> str

------------------------------------------------------------------------------

Returns a string containing the regular expression and its options (using the
(?opts:source) notation. This string can be fed back in to Regexp::new to a
regular expression with the same semantics as the original. (However,
Regexp#== may not return true when comparing the two, as the source of the
regular expression itself may differ, as the example shows).  Regexp#inspect
produces a generally more readable version of rxp.

  r1 = /ab+c/ix           #=> /ab+c/ix
  s1 = r1.to_s            #=> "(?ix-m:ab+c)"
  r2 = Regexp.new(s1)     #=> /(?ix-m:ab+c)/
  r1 == r2                #=> false
  r1.source               #=> "ab+c"
  r2.source               #=> "(?ix-m:ab+c)"

=end

# ruby Regexp#to_s.rb

p r1 = /ab+c/ix           #=> /ab+c/ix
p s1 = r1.to_s            #=> "(?ix-m:ab+c)"
p r2 = Regexp.new(s1)     #=> /(?ix-m:ab+c)/
p r1 == r2                #=> false
p r1.source               #=> "ab+c"
p r2.source               #=> "(?ix-m:ab+c)"
