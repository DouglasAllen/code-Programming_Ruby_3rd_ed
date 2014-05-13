=begin

Module.autoload?

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.autoload?(name)   -> String or nil

------------------------------------------------------------------------------

Returns filename to be loaded if name is registered as autoload
in the namespace of mod.

  module A
  end
  
  A.autoload(:B, "b")
  A.autoload?(:B)            #=> "b"
  
=end

module A
end

#~ b = './Module.rb'
p A.autoload(:B, "b")
p A.autoload?(:B)            #=> "b"
  