=begin

Module.class_variable_defined?

(from ~/.rdoc)
------------------------------------------------------------------------------
  obj.class_variable_defined?(symbol)    -> true or false

------------------------------------------------------------------------------

Returns true if the given class variable is definedin obj.

  class Fred
    @@foo = 99
  end
  Fred.class_variable_defined?(:@@foo)    #=> true
  Fred.class_variable_defined?(:@@bar)    #=> false

=end

class Fred
  @@foo = 99
end
Fred.class_variable_defined?(:@@foo)    #=> true
Fred.class_variable_defined?(:@@bar)    #=> false