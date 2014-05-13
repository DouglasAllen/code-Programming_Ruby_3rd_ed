=begin

Module.class_variable_get

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.class_variable_get(symbol)    -> obj

------------------------------------------------------------------------------

Returns the value of the given class variable (or throws aNameError
exception). The @@ part of thevariable name should be included for
regular class variables

  class Fred
    @@foo = 99
  end
  Fred.class_variable_get(:@@foo)     #=> 99
  
=end

class Fred
  @@foo = 99
end
Fred.class_variable_get(:@@foo)     #=> 99