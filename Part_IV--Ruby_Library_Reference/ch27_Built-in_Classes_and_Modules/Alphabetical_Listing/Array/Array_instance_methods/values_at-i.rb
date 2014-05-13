=begin

Array.values_at

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.values_at(selector,... )  -> new_ary

------------------------------------------------------------------------------

Returns an array containing the elements in
self corresponding to the given selector(s). 
The selectors may be either integer indices or ranges.
See also
Array#select.

  a = %w{ a b c d e f }
  
  a.values_at(1, 3, 5)
  # => ["b", "d", "f"]
  
  a.values_at(1, 3, 5, 7)
  # => ["b", "d", "f", nil]
  
  a.values_at(-1, -3, -5, -7)
  # => ["f", "d", "b", nil]
  
  a.values_at(1..3, 2...5)
  # => ["b", "c", "d", "c", "d", "e"]

=end

a = %w{ a b c d e f }
  
p a.values_at(1, 3, 5)

p a.values_at(1, 3, 5, 7)

p a.values_at(-1, -3, -5, -7)

p a.values_at(1..3, 2...5)
