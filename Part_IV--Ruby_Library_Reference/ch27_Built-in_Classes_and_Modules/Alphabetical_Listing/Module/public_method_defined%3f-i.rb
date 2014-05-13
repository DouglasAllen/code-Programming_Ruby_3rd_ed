=begin

Module.public_method_defined?

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.public_method_defined?(symbol)   -> true or false

------------------------------------------------------------------------------

Returns true if the named public method is defined by_mod_ (or its
included modules and, if mod is a class,its ancestors).

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

  A.method_defined? :method1           #=> true
  C.public_method_defined? "method1"   #=> true
  C.public_method_defined? "method2"   #=> false
  C.method_defined? "method2"          #=> true
  
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

p A.method_defined? :method1           #=> true
p B.method_defined? :method2           #=> true
p C.public_method_defined? "method1"   #=> true
p C.public_method_defined? "method2"   #=> false
p C.method_defined? "method2"          #=> true
p C.method_defined? "method3"          #=> true