=begin

Module.const_set

(from ~/.rdoc)
------------------------------------------------------------------------------

  mod.const_set(sym, obj)    -> obj

------------------------------------------------------------------------------

Sets the named constant to the given object, returning that object.Creates a
new constant if no constant with the given name previouslyexisted.

  Math.const_set("HIGH_SCHOOL_PI", 22.0/7.0)   #=> 3.14285714285714
  Math::HIGH_SCHOOL_PI - Math::PI              #=> 0.00126448926734968
  
=end

p Math.const_set("HIGH_SCHOOL_PI", 22.0/7.0)   #=> 3.14285714285714
p Math::HIGH_SCHOOL_PI - Math::PI              #=> 0.00126448926734968