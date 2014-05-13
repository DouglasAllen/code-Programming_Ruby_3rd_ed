=begin

Object#enum_for

(from ~/.rdoc)
------------------------------------------------------------------------------
  obj.to_enum(method = :each, *args)
  obj.enum_for(method = :each, *args)

------------------------------------------------------------------------------

Creates a new Enumerator which will enumerate by on calling method
on +obj+.

method:
  the method to call on obj to generate the enumeration

args:
  arguments that will be passed in method in addition to the item
  itself.  Note that the number of args must not exceed the number expected by
  method


Example

  str = "xyz"

  enum = str.enum_for(:each_byte)
  enum.each { |b| puts b }
  # => 120
  # => 121
  # => 122

  # protect an array from being modified by some_method
  a = [1, 2, 3]
  some_method(a.to_enum)

=end