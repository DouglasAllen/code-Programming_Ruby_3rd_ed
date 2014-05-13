# Regexp#~.rb

=begin

= Regexp#~

(from ~/.ri)
------------------------------------------------------------------------------
  ~ rxp   -> integer or nil

------------------------------------------------------------------------------

Match---Matches rxp against the contents of $_. Equivalent to rxp
=~ $_.

  $_ = "input data"
  ~ /at/   #=> 7

=end

# ruby Regexp#~.rb

$_ = "input data"

p ~ /at/   #=> 7
