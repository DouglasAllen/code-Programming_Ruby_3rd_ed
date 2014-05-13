=begin

Array.abbrev

(from ~/.rdoc)
------------------------------------------------------------------------------

  abbrev(pattern = nil)

------------------------------------------------------------------------------

Calculates the set of un ambiguous abbreviations for the strings in self. 
If passed a pattern or a string, only the strings matching
the pattern or starting with the string are considered.

  %w{ car cone }.abbrev   
  #=> { "ca" => "car", "car" => "car",
        "co" => "cone", "con" => cone",
        "cone" => "cone" }


=end