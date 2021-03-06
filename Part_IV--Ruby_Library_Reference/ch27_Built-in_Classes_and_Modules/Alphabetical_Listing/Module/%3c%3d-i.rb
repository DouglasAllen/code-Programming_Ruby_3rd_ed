=begin

Module.<=

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod <= other   ->  true, false, or nil

------------------------------------------------------------------------------

Returns true if mod is a subclass of other or is the same as
other. Returns nil if there's no relationship between the
two.(Think of the relationship in terms of the class definition:
"class A<B" implies "A<B").

=end