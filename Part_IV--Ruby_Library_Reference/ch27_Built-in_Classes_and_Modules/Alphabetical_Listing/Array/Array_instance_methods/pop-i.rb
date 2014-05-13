=begin

Array.pop

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.pop    -> obj or nil
  ary.pop(n) -> new_ary

------------------------------------------------------------------------------

Removes the last element from self and returns it, or nil if the
array is empty.

If a number n is given, returns an array of the last n elements(or
less) just like array.slice!(-n, n) does.

  a = [ "a", "b", "c", "d" ]
  a.pop     #=> "d"
  a.pop(2)  #=> ["b", "c"]
  a         #=> ["a"]

=end