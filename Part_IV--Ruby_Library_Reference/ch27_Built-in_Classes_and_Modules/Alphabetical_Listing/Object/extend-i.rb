=begin

Object#extend

(from ~/.rdoc)
------------------------------------------------------------------------------
  obj.extend(module, ...)    -> obj

------------------------------------------------------------------------------

Adds to obj the instance methods from each module given as aparameter.

  module Mod
    def hello
      "Hello from Mod.\n"
    end
  end

  class Klass
    def hello
      "Hello from Klass.\n"
    end
  end

  k = Klass.new
  k.hello         #=> "Hello from Klass.\n"
  k.extend(Mod)   #=> #<Klass:0x401b3bc8>
  k.hello         #=> "Hello from Mod.\n"

=end