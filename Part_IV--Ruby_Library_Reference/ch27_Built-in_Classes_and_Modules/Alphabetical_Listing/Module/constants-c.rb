=begin

Module::constants

(from ~/.rdoc)
------------------------------------------------------------------------------

  Module::constants   -> array
  Module::constants(inherited)   -> array

------------------------------------------------------------------------------

In the first form, returns an array of the names of all constants accessible
from the point of call. This list includes the names of all modules and
classes defined in the global scope.

  Module::constants.sort.first(4)
  # => [:ARGF, :ARGV, :ArgumentError, :Array]

  Module::constants.include?(:SEEK_SET)   # => false
  
The second form calls the instance method constants.

  class IO
    Module::constants.include?(:SEEK_SET) # => true
  end

=end

p Module::constants.sort.first(4)
# => [:ARGF, :ARGV, :ArgumentError, :Array]

p Module::constants.include?(:SEEK_SET)   # => false

class IO
  p Module::constants.include?(:SEEK_SET) # => true
end