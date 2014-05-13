=begin

Array.slice

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary[index]                -> obj     or nil
  ary[start, length]        -> new_ary or nil
  ary[range]                -> new_ary or nil
  ary.slice(index)          -> obj     or nil
  ary.slice(start, length)  -> new_ary or nil
  ary.slice(range)          -> new_ary or nil

------------------------------------------------------------------------------

Element Reference---Returns the element at index,
or returns a subarray starting at start andcontinuing for length elements, 
or returns a subarray specified by range.
Negative indices count backward from the end of thearray (-1 is the last element). 
Returns nil if the index(or starting index) are out of range.

  a = [ "a", "b", "c", "d", "e" ]
  
  a[2] +  a[0] + a[1]    #=> "cab"
  a[6]                   #=> nil
  a[1, 2]                #=> [ "b", "c" ]
  a[1..3]                #=> [ "b", "c", "d" ]
  a[4..7]                #=> [ "e" ]
  a[6..10]               #=> nil
  a[-3, 3]               #=> [ "c", "d", "e" ]
  
  # special cases
  a[5]                   #=> nil
  a[5, 1]                #=> []
  a[5..10]               #=> []

=end