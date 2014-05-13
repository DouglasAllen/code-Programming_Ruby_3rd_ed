=begin

Class::new

(from ~/.rdoc)
------------------------------------------------------------------------------

  Class.new(super_class=Object)               -> a_class
  Class.new(super_class=Object) { |mod| ... } -> a_class

------------------------------------------------------------------------------

Creates a new anonymous (unnamed) class with the given superclass(or
Object if no parameter is given). You can give a class a name by
assigning the class object to a constant.

If a block is given, it is passed the class object, and the block is 
evaluated in the context of this class using class_eval.

.class_eval

(from ~/.rdoc)
Implementation from Module
------------------------------------------------------------------------------

  mod.class_eval(string [, filename [, lineno]])  -> obj
  mod.module_eval {|| block }                     -> obj

------------------------------------------------------------------------------

Evaluates the string or block in the context of mod. This canbe used to
add methods to a class. module_eval returnsthe result of evaluating its
argument. The optional _filename_and lineno parameters set the text for
error messages.

  class Thing
  end
  a = %q{def hello() "Hello there!" end}
  Thing.module_eval(a)
  puts Thing.new.hello()
  Thing.module_eval("invalid code", "dummy", 123)

produces:

  Hello there!
  dummy:123:in `module_eval': undefined local variable
      or method `code' for Thing:Class

------------------------------------------------------------------------------

  fred = Class.new do
    def meth1
      "hello"
    end
    def meth2
      "bye"
    end
  end

  a = fred.new     #=> #<#<Class:0x100381890>:0x100376b98>
  a.meth1          #=> "hello"
  a.meth2          #=> "bye"

Assign the class to a constant (name starting uppercase) if you want 
to treat it like a regular class.

=end