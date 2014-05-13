=begin

Module::new

(from ~/.rdoc)
------------------------------------------------------------------------------
  Module.new                  -> mod
  Module.new {|mod| block }   -> mod

------------------------------------------------------------------------------

Creates a new anonymous module. If a block is given, it is passed the module
object, and the block is evaluated in the context of this module using
module_eval.

  fred = Module.new do
    def meth1
      "hello"
    end
    def meth2
      "bye"
    end
  end
  a = "my string"
  a.extend(fred)   #=> "my string"
  a.meth1          #=> "hello"
  a.meth2          #=> "bye"

Assign the module to a constant (name starting uppercase) if you want to treat
it like a regular module.

=end

fred = Module.new do
  def meth1
    "hello"
  end
  
  def meth2
    "bye"
  end
end

a = "my string"
p a.extend(fred)   #=> "my string"
p a.meth1          #=> "hello"
p a.meth2          #=> "bye"