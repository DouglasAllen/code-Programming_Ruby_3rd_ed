=begin

Abbrev::abbrev

(from ruby core)
------------------------------------------------------------------------------
  abbrev(words, pattern = nil)

------------------------------------------------------------------------------

Given a set of strings, calculate the set of unambiguous abbreviations for
those strings, and return a hash where the keys are all the possible
abbreviations and the values are the full strings. Thus, given input of "car"
and "cone", the keys pointing to "car" would be "ca" and "car", while those
pointing to "cone" would be "co", "con", and "cone".

The optional pattern parameter is a pattern or a string. Only those
input strings matching the pattern, or beginning the string, are considered for
inclusion in the output hash

=end

require 'abbrev'

p Abbrev::abbrev(['ruby', 'rules']) 
# => {"rub"=>"ruby",   "rule"=>"rules",  "rul"=>"rules",  "ruby"=>"ruby",  "rules"=>"rules"}