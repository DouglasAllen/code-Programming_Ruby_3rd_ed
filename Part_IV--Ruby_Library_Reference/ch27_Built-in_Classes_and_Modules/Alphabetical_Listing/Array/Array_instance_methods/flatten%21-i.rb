=begin

Array.flatten!

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.flatten!        -> ary or nil
  ary.flatten!(level) -> array or nil

------------------------------------------------------------------------------

Flattens self in place. Returns nil if no modifications were made
(i.e., ary contains no subarrays.)  If the optional level argument
determines the level of recursion to flatten.

  a = [ 1, 2, [3, [4, 5] ] ]
  a.flatten!   #=> [1, 2, 3, 4, 5]
  a.flatten!   #=> nil
  a            #=> [1, 2, 3, 4, 5]
  a = [ 1, 2, [3, [4, 5] ] ]
  a.flatten!(1) #=> [1, 2, 3, [4, 5]]


=end