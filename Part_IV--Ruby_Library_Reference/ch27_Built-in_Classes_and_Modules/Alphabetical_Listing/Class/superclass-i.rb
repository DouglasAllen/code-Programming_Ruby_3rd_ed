=begin

Class.superclass

(from ~/.rdoc)
------------------------------------------------------------------------------
  class.superclass -> a_super_class or nil

------------------------------------------------------------------------------

Returns the superclass of class, or nil.

  File.superclass          #=> IO
  IO.superclass            #=> Object
  Object.superclass        #=> BasicObject
  class Foo; end
  class Bar < Foo; end
  Bar.superclass           #=> Foo

returns nil when the given class hasn't a parent class:

  BasicObject.superclass   #=> nil
  
=end
