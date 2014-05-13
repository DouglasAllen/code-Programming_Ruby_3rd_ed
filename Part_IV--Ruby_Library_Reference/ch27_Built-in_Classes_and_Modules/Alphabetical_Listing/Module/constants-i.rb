=begin

Module.constants

(from ~/.rdoc)
------------------------------------------------------------------------------

  Module.constants   -> array
  Module.constants(inherited)   -> array

------------------------------------------------------------------------------

In the first form, returns an array of the names of all constants accessible
from the point of call. This list includes the names of all modules and
classes defined in the global scope.

  Module.constants.sort.first(4)
  # => [:ARGF, :ARGV, :ArgumentError, :Array]

  Module.constants.include?(:SEEK_SET)   # => false
  
The second form calls the instance method constants.

  class IO
    Module.constants.include?(:SEEK_SET) # => true
  end

(from ~/.rdoc)
------------------------------------------------------------------------------

  mod.constants(inherit=true)    -> array

------------------------------------------------------------------------------

Returns an array of the names of the constants accessible in mod. This
includes the names of constants in any included modules (example at start of
section), unless the all parameter is set to false.

  IO.constants.include?(:SYNC)        #=> true
  IO.constants(false).include?(:SYNC) #=> false

Also see Module.const_defined?.

(from ~/.rdoc)
------------------------------------------------------------------------------

  mod.const_defined?(sym, inherit=true)   -> true or false

------------------------------------------------------------------------------

Checks for a constant with the given name in mod if inherit is
set, the lookup will also search the ancestors (and Object if mod
is a Module.)

Returns whether or not a definition is found:

  Math.const_defined? "PI"         #=> true
  IO.const_defined? :SYNC          #=> true
  IO.const_defined? :SYNC, false   #=> false

=end

p Module.constants.sort.first(4)
# => [:ARGF, :ARGV, :ArgumentError, :Array]

p Module.constants.include?(:SEEK_SET)   # => false

class IO
  p Module.constants.include?(:SEEK_SET) # => true
end

p IO.constants.include?(:SYNC)           #=> true maybe old
p IO.constants(false).include?(:SYNC) #=> false
p IO.const_defined? :SYNC                 #=> true maybe old
p IO.const_defined? :SYNC, false        #=> false