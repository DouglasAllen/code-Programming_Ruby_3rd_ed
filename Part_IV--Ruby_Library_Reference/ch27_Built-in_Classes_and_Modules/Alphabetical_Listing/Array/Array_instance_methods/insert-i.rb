=begin

Array.insert

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.insert(index, obj...)  -> ary

------------------------------------------------------------------------------

Inserts the given values before the element with the given index(which may be
negative).

  a = %w{ a b c d }
  a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
  a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

=end