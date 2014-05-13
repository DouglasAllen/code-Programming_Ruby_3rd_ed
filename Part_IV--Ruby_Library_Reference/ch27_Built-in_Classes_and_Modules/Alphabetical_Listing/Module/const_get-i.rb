=begin

Module.const_get

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.const_get(sym, inherit=true)    -> obj

------------------------------------------------------------------------------

Checks for a constant with the given name in modIf inherit is
set, the lookup will also searchthe ancestors (and Object if mod
is a Module.)

The value of the constant is returned if a definition is found,otherwise a
NameError is raised.

  Math.const_get(:PI)   #=> 3.14159265358979
  
=end

p Math.const_get(:PI)   #=> 3.14159265358979