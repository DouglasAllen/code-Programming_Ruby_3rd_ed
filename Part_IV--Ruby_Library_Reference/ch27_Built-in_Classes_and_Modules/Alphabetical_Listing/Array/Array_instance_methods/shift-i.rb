=begin

Array.shift

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.shift    -> obj or nil
  ary.shift(n) -> new_ary

------------------------------------------------------------------------------

Returns the first element of self and removes it (shifting all other
elements down by one). Returns nil if the array is empty.

If a number n is given, returns an array of the first n elements(or
less) just like array.slice!(0, n) does.

  args = [ "-m", "-q", "filename" ]
  args.shift     #=> "-m"
  args           #=> ["-q", "filename"]

  args = [ "-m", "-q", "filename" ]
  args.shift(2)  #=> ["-m", "-q"]
  args           #=> ["filename"]

=end