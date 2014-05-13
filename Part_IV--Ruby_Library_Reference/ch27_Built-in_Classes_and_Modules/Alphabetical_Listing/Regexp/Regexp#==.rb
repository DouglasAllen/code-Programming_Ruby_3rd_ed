# Regexp#==.rb

=begin

= Regexp#==

(from ~/.ri)
------------------------------------------------------------------------------
  rxp == other_rxp      -> true or false
  rxp.eql?(other_rxp)   -> true or false

------------------------------------------------------------------------------

Equality---Two regexps are equal if their patterns are identical, they have
the same character set code, and their casefold? values are the same.

  /abc/  == /abc/x   #=> false
  /abc/  == /abc/i   #=> false
  /abc/  == /abc/n   #=> false
  /abc/u == /abc/n   #=> false

=end

# ruby Regexp#==.rb

p /abc/  == /abc/x   #=> false
p /abc/  == /abc/i   #=> false
p /abc/  == /abc/n   #=> false
p /abc/u == /abc/n   #=> false
 
