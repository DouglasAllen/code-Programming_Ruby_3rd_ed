=begin

Object#==

(from ~/.rdoc)
Implementation from BasicObject
------------------------------------------------------------------------------
  obj == other        -> true or false
  obj.equal?(other)   -> true or false
  obj.eql?(other)     -> true or false

------------------------------------------------------------------------------

Equality---At the Object level, == returnstrue only if
obj and other are thesame object. Typically, this method is
overridden in descendantclasses to provide class-specific meaning.

Unlike ==, the equal? method should never beoverridden by
subclasses: it is used to determine object identity(that is,
a.equal?(b) iff a is the sameobject as b).

The eql? method returns true ifobj and anObject
have the same value. Used byHash to test members for equality.  For
objects ofclass Object, eql? is synonymous with==.
Subclasses normally continue this tradition, butthere are exceptions.
Numeric types, for example,perform type conversion across ==,
but not acrosseql?, so:

  1 == 1.0     #=> true
  1.eql? 1.0   #=> false

=end