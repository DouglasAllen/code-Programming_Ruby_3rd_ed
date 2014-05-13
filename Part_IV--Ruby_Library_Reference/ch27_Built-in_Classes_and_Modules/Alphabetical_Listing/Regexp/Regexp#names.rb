# Regexp#names.rb

=begin

= Regexp#names

(from ~/.ri)
------------------------------------------------------------------------------
  rxp.names   -> [name1, name2, ...]

------------------------------------------------------------------------------

Returns a list of names of captures as an array of strings.

  /(?<foo>.)(?<bar>.)(?<baz>.)/.names
  #=> ["foo", "bar", "baz"]

  /(?<foo>.)(?<foo>.)/.names
  #=> ["foo"]

  /(.)(.)/.names
  #=> []

=end

# ruby Regexp#names.rb

p /(?<foo>.)(?<bar>.)(?<baz>.)/.names  #=> ["foo", "bar", "baz"]

p /(?<foo>.)(?<foo>.)/.names  #=> ["foo"]

p /(.)(.)/.names  #=> [] 
