=begin

Array.sort!

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.sort!                   -> ary
  ary.sort! {| a,b | block }  -> ary

------------------------------------------------------------------------------

Sorts self. 
Comparisons for the sort will be done using the <=> operator 
or using an optional code block. 
The block implements a comparison between a and b, 
returning -1, 0, or +1. 
See also
Enumerable#sort_by.

  a = [ "d", "a", "e", "c", "b" ]
  a.sort!                    #=> ["a", "b", "c", "d", "e"]
  a.sort! {|x,y| y <=> x }   #=> ["e", "d", "c", "b", "a"]

=end