# Regexp#inspect.rb

=begin

= Regexp#inspect

(from ~/.ri)
------------------------------------------------------------------------------
  rxp.inspect   -> string

------------------------------------------------------------------------------

Produce a nicely formatted string-version of rxp. Perhaps surprisingly,
#inspect actually produces the more natural version of the string than #to_s.

  /ab+c/ix.inspect        #=> "/ab+c/ix"

=end

# ruby Regexp#inspect.rb

p /ab+c/ix.inspect        #=> "/ab+c/ix" 
