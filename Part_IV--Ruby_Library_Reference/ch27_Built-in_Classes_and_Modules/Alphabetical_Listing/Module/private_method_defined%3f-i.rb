=begin

Module.private_method_defined?

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.private_method_defined?(symbol)    -> true or false

------------------------------------------------------------------------------

Returns true if the named private method is defined by_ mod_ (or its
included modules and, if mod is a class,its ancestors).

  module A
    def method1()  end
  end
  class B
    private
    def method2()  end
  end
  class C < B
    include A
    def method3()  end
  end

  A.method_defined? :method1            #=> true
  C.private_method_defined? "method1"   #=> false
  C.private_method_defined? "method2"   #=> true
  C.method_defined? "method2"           #=> false
  
=end

module A
  def method1()  end
end

class B
  private
  def method2()  end
end

class C < B
  include A
  def method3()  end
end

p A.method_defined? :method1            #=> true
p B.method_defined? :method2            #=> false
p C.method_defined? :method1            #=> true
p C.private_method_defined? "method1"   #=> false
p C.private_method_defined? "method2"   #=> true
p C.method_defined? "method3"           #=> false