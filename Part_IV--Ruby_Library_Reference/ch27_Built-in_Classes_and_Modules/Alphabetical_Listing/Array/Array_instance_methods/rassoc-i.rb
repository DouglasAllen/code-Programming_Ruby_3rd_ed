=begin

Array.rassoc

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.rassoc(obj) -> new_ary or nil

------------------------------------------------------------------------------

Searches through the array whose elements are also arrays. Compares _obj_ with
the second element of each contained array using ==. Returns the first
contained array that matches. See also Array#assoc.

  a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]
  a.rassoc("two")    #=> [2, "two"]
  a.rassoc("four")   #=> nil

=end