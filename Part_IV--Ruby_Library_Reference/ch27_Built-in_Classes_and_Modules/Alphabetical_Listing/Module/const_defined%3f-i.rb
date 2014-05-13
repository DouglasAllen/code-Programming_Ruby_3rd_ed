=begin

Module.const_defined?

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.const_defined?(sym, inherit=true)   -> true or false

------------------------------------------------------------------------------

Checks for a constant with the given name in modIf inherit is
set, the lookup will also searchthe ancestors (and Object if mod
is a Module.)

Returns whether or not a definition is found:

  Math.const_defined? "PI"   #=> true
  IO.const_defined? :SYNC   #=> true
  IO.const_defined? :SYNC, false   #=> false
  
=end

Math.const_defined? "PI"         #=> true
IO.const_defined? :SYNC          #=> true
IO.const_defined? :SYNC, false   #=> false