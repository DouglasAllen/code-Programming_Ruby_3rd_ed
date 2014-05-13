=begin

Module.class_variable_set

(from ~/.rdoc)
------------------------------------------------------------------------------
  obj.class_variable_set(symbol, obj)    -> obj

------------------------------------------------------------------------------

Sets the class variable names by symbol toobject.

  class Fred
    @@foo = 99
    def foo
      @@foo
    end
  end
  Fred.class_variable_set(:@@foo, 101)     #=> 101
  Fred.new.foo                             #=> 101
  
=end

class Fred
  @@foo = 99
  def foo
    @@foo
  end
end
Fred.class_variable_set(:@@foo, 101)     #=> 101
Fred.new.foo                             #=> 101