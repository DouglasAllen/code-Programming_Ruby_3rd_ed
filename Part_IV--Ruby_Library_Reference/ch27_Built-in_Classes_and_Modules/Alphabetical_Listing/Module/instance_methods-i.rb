=begin

Module.instance_methods

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.instance_methods(include_super=true)   -> array

------------------------------------------------------------------------------

Returns an array containing the names of the public and protected
instancemethods in the receiver. For a module, these are the public and
protected methods;for a class, they are the instance (not singleton) methods.
With noargument, or with an argument that is false, theinstance methods
in mod are returned, otherwise the methodsin mod and
mod's superclasses are returned.

  module A
    def method1()  end
  end
  class B
    def method2()  end
  end
  class C < B
    def method3()  end
  end

  A.instance_methods                #=> [:method1]
  B.instance_methods(false)         #=> [:method2]
  C.instance_methods(false)         #=> [:method3]
  C.instance_methods(true).length   #=> 58
  
=end

module A
  def method1()  end
end

class B
  def method2()  end
end

class C < B
  def method3()  end
end

p A.instance_methods                #=> [:method1]
p B.instance_methods(false)         #=> [:method2]
p C.instance_methods(false)         #=> [:method3]
p C.instance_methods(true).length   #=> 58