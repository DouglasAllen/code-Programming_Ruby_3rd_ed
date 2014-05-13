=begin

Module.autoload

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.autoload(module, filename)   -> nil

------------------------------------------------------------------------------

Registers filename to be loaded (using Kernel::require)the first
time that module (which may be a String or a symbol) is accessed
in the namespace of mod.

  module A
  end
  
  b = 'some stupid example like this needs b'
  A.autoload(:B, "b")
  A::B.doit            # autoloads "b"

=end

module A
end

b = 'some stupid example like this needs b'
A.autoload(:B, "./Module.rb")
A::B.doit            # autoloads "b"