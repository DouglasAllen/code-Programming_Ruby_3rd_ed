=begin

Module.class_eval

(from ~/.rdoc)
------------------------------------------------------------------------------

  mod.class_eval(string [, filename [, lineno]])  -> obj
  mod.module_eval {|| block }                     -> obj

------------------------------------------------------------------------------

Evaluates the string or block in the context of mod. This can be used to
add methods to a class. module_eval returns the result of evaluating its
argument. The optional _filename_ and lineno parameters set the text for
error messages.

  class Thing
  end
  a = %q{def hello() "Hello there!" end}
  Thing.module_eval(a)
  puts Thing.new.hello()
  
  Thing.module_eval("invalid code", "dummy", 123)

produces:

  Hello there!
  dummy:123:in `<module_eval>': undefined local variable
      or method `code' for Thing:Class
      
=end

class Thing
end
a = %q{def hello() "Hello there!" end}
Thing.module_eval(a)
puts Thing.new.hello()
Thing.module_eval("invalid code", "dummy", 123)

