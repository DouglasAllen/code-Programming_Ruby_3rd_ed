# Regexp#source.rb

=begin

= Regexp#source

(from ~/.ri)
------------------------------------------------------------------------------
  rxp.source   -> str

------------------------------------------------------------------------------

Returns the original string of the pattern.

  /ab+c/ix.source #=> "ab+c"

Note that escape sequences are retained as is.

  /\x20\+/.source  #=> "\\x20\\+"

=end

# ruby Regexp#source.rb

p /\x20\+/.source  #=> "\\x20\\+" 
