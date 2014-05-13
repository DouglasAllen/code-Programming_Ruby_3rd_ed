=begin

Array.include?

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.include?(obj)   -> true or false

------------------------------------------------------------------------------

Returns true if the given object is present in +self+ (that is, if any
object == anObject), false otherwise.

  a = [ "a", "b", "c" ]
  a.include?("b")   #=> true
  a.include?("z")   #=> false

=end