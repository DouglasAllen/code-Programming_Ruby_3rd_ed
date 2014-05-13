# Regexp#hash.rb

=begin

= Regexp#hash

(from ~/.ri)
------------------------------------------------------------------------------
  rxp.hash   -> fixnum

------------------------------------------------------------------------------

Produce a hash based on the text and options of this regular expression.

=end

# ruby Regexp#hash.rb

re = Regexp.compile('hey/ix')
p re.hash 
