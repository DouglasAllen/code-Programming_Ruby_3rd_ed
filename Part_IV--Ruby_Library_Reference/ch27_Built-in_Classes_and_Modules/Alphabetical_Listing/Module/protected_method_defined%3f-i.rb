=begin

Module.protected_method_defined?

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.protected_method_defined?(symbol)   -> true or false

------------------------------------------------------------------------------

Returns true if the named protected method is definedby mod (or
its included modules and, if mod is aclass, its ancestors).

  module A
    def method1()  end
  end
  class B
    protected
    def method2()  end
  end
  class C < B
    include A
    def method3()  end
  end

  A.method_defined? :method1              #=> true
  C.protected_method_defined? "method1"   #=> false
  C.protected_method_defined? "method2"   #=> true
  C.method_defined? "method2"             #=> true
  
=end

module A
  def method1()  end
end

class B
  protected
  def method2()  end
end

class C < B
  include A
  def method3()  end
end

p A.method_defined? :method1              #=> true
p B.method_defined? :method2              #=> true
p C.protected_method_defined? "method1"   #=> false
p C.protected_method_defined? "method2"   #=> true
p C.method_defined? :method2              #=> true
p C.method_defined? "method3"             #=> true