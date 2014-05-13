=begin

Module < Object

(from ~/.rdoc)
------------------------------------------------------------------------------
A Module is a collection of methods and constants. The methods in a
module may be instance methods or module methods. Instance methods appear as
methods in a class when the module is included, module methods do not.
Conversely, module methods may be called without creating an encapsulating
object, while instancem ethods may not. (See Module#module_function)

In the descriptions that follow, the parameter sym refers to a symbol,
which is either a quoted string or a Symbol (such as :name).

  module Mod
    include Math
    CONST = 1
    def meth
      #  ...
    end
  end
  
  Mod.class              #=> Module
  Mod.constants          #=> [:CONST, :PI, :E]
  Mod.instance_methods   #=> [:meth]

------------------------------------------------------------------------------
Class methods:

  constants
  nesting
  new

Instance methods:

  <
  <=
  <=>
  ==
  ===
  >
  >=
  ancestors
  autoload
  autoload?
  class_eval
  class_exec
  class_variable_defined?
  class_variable_get
  class_variable_set
  class_variables
  const_defined?
  const_get  
  const_set
  constants
  freeze
  include?
  included_modules
  instance_method
  instance_methods
  method_defined?
  module_eval
  module_exec
  name
  private_class_method
  private_instance_methods
  private_method_defined?
  protected_instance_methods
  protected_method_defined?  
  public_class_method
  public_instance_method
  public_instance_methods
  public_method_defined?  
  remove_class_variable
  to_s  

=end

module Mod
  include Math
  CONST = 1
  def meth
    #  ...
  end
end

p Mod.class              #=> Module
p Mod.constants          #=> [:CONST, :PI, :E]
p Mod.instance_methods   #=> [:meth]