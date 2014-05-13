# Regexp#match.rb

=begin

= Regexp#match

(from ~/.ri)
------------------------------------------------------------------------------
  rxp.match(str)       -> matchdata or nil
  rxp.match(str,pos)   -> matchdata or nil

------------------------------------------------------------------------------

Returns a MatchData object describing the match, or nil if there was no match.
This is equivalent to retrieving the value of the special variable $~
following a normal match. If the second parameter is present, it specifies the
position in the string to begin the search.

  /(.)(.)(.)/.match("abc")[2]   #=> "b"
  /(.)(.)/.match("abc", 1)[2]   #=> "c"

If a block is given, invoke the block with MatchData if match succeed, so that
you can write

  pat.match(str) {|m| ...}

instead of

  if m = pat.match(str)
    ...
  end

The return value is a value from block execution in this case.

=end

# ruby Regexp#match.rb

p /(.)(.)(.)/.match("abc")[2]   #=> "b"
p /(.)(.)/.match("abc", 1)[2]   #=> "c"
/(.)(.)(.)/.match("abc", 0) {|m| puts m}
