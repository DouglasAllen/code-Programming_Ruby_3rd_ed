# Regexp#named_captures.rb

=begin

= Regexp#named_captures

(from ~/.ri)
------------------------------------------------------------------------------
  rxp.named_captures  -> hash

------------------------------------------------------------------------------

Returns a hash representing information about named captures of rxp.

A key of the hash is a name of the named captures. A value of the hash is an
array which is list of indexes of corresponding named captures.

  /(?<foo>.)(?<bar>.)/.named_captures
  #=> {"foo"=>[1], "bar"=>[2]}

  /(?<foo>.)(?<foo>.)/.named_captures
  #=> {"foo"=>[1, 2]}

If there are no named captures, an empty hash is returned.

  /(.)(.)/.named_captures
  #=> {}

=end

# ruby Regexp#named_captures.rb

p /(?<foo>.)(?<bar>.)/.named_captures  #=> {"foo"=>[1], "bar"=>[2]}
p /(?<foo>.)(?<foo>.)/.named_captures  #=> {"foo"=>[1, 2]}
