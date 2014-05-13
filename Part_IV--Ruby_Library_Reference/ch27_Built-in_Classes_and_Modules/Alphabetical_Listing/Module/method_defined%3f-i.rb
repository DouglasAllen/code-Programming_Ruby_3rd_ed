=begin

Module.method_defined?

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.method_defined?(symbol)    -> true or false

------------------------------------------------------------------------------

Returns true if the named method is defined by_mod_ (or its included
modules and, if mod is a class, its ancestors). Public and protected
methods are matched.

  module A
    def method1()  end
  end
  class B
    def method2()  end
  end
  class C < B
    include A
    def method3()  end
  end

  A.method_defined? :method1    #=> true
  C.method_defined? "method1"   #=> true
  C.method_defined? "method2"   #=> true
  C.method_defined? "method3"   #=> true
  C.method_defined? "method4"   #=> false
  
=end  
  
module A
  def method1()  end
end
class B
  def method2()  end
end
class C < B
  include A
  def method3()  end
end

p  A.method_defined? :method1    #=> true
p  C.method_defined? "method1"   #=> true
p  C.method_defined? "method2"   #=> true
p  C.method_defined? "method3"   #=> true
p  C.method_defined? "method4"   #=> false