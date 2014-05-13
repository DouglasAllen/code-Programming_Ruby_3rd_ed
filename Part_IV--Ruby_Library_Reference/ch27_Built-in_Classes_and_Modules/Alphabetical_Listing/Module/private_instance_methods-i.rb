=begin

Module.private_instance_methods

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.private_instance_methods(include_super=true)    -> array

------------------------------------------------------------------------------

Returns a list of the private instance methods defined inmod. If the
optional parameter is not false, themethods of any ancestors are
included.

  module Mod
    def method1()  end
    private :method1
    def method2()  end
  end
  Mod.instance_methods           #=> [:method2]
  Mod.private_instance_methods   #=> [:method1]
  
=end

module Mod
  def method1()  end
  
  private :method1
  def method2()  end
end

p Mod.instance_methods           #=> [:method2]
p Mod.private_instance_methods   #=> [:method1]