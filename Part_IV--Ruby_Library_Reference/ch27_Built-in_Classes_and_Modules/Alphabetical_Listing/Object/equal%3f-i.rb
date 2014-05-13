=begin

Object#equal?

(from ~/.rdoc)
Implementation from BasicObject
------------------------------------------------------------------------------
  obj == other        -> true or false
  obj.equal?(other)   -> true or false
  obj.eql?(other)     -> true or false

------------------------------------------------------------------------------

Equality---At the Object level, == returns true only if
obj and other are the same object. Typically, this method is
overridden in descendant classes to provide class-specific meaning.

Unlike ==, the equal? method should never be overridden by
subclasses: it is used to determine object identity(that is,
a.equal?(b) if a is the same object as b).

The eql? method returns true if obj and an Object
have the same value. Used by Hash to test members for equality.  For
objects of class Object, eql? is synonymous with==.
Subclasses normally continue this tradition, but there are exceptions.
Numeric types, for example, perform type conversion across ==,
but not across eql?, so:

  1 == 1.0     #=> true
  1.eql? 1.0   #=> false

=end