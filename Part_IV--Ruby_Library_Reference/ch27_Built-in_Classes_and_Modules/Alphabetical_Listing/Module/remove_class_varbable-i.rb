=begin

Module.remove_class_variable

(from ~/.rdoc)
------------------------------------------------------------------------------
  remove_class_variable(sym)    -> obj

------------------------------------------------------------------------------

Removes the definition of the sym, returning thatconstant's value.

  class Dummy
    @@var = 99
    puts @@var
    remove_class_variable(:@@var)
    p(defined? @@var)
  end

produces:

  99
  nil
  
=end

class Dummy
  @@var = 99
  puts @@var
  remove_class_variable(:@@var)
  p(defined? @@var)
end