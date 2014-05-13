=begin

Module.ancestors

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.ancestors -> array

------------------------------------------------------------------------------

Returns a list of modules included in mod (including mod itself).

  module Mod
    include Math
    include Comparable
  end

  Mod.ancestors    #=> [Mod, Comparable, Math]
  Math.ancestors   #=> [Math]
  
=end

module Mod
  include Math
  include Comparable
end

p Mod.ancestors    #=> [Mod, Comparable, Math]
p Math.ancestors   #=> [Math]
  