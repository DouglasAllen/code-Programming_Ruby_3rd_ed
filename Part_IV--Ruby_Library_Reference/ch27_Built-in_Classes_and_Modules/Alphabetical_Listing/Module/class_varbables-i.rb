=begin

Module.class_variables

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.class_variables   -> array

------------------------------------------------------------------------------

Returns an array of the names of class variables in mod.

  class One
    @@var1 = 1
  end
  class Two < One
    @@var2 = 2
  end
  One.class_variables   #=> [:@@var1]
  Two.class_variables   #=> [:@@var2]

=end

class One
  @@var1 = 1
end
class Two < One
  @@var2 = 2
end
One.class_variables   #=> [:@@var1]
Two.class_variables   #=> [:@@var2]
