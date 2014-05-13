=begin

Module.included_modules

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.included_modules -> array

------------------------------------------------------------------------------

Returns the list of modules included in mod.

  module Mixin
  end

  module Outer
    include Mixin
  end

  Mixin.included_modules   #=> []
  Outer.included_modules   #=> [Mixin]
  
=end

module Mixin
end

module Outer
  include Mixin
end

p Mixin.included_modules   #=> []
p Outer.included_modules   #=> [Mixin]