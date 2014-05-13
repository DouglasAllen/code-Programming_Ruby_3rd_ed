=begin

Module.module_exec

(from ~/.rdoc)
------------------------------------------------------------------------------

  mod.module_exec(arg...) {|var...| block }       -> obj
  mod.class_exec(arg...) {|var...| block }        -> obj

------------------------------------------------------------------------------

Evaluates the given block in the context of the class/module.
The method defined in the block will belong to the receiver.

  class Thing
  end
  
  Thing.class_exec{
    def hello() "Hello there!" end
  }
  
  puts Thing.new.hello()
  
  module Thang
  end
  
  Thang.module_exec{
    def self.hello() "Ain't no big thang!" end
  }
  
  puts Thang.hello()

produces:

  Hello there!
  
=end

class Thing
end

Thing.class_exec{
  def hello() "Hello there!" end
}

puts Thing.new.hello()

module Thang
end

Thang.module_exec{
  def self.hello() "Ain't no big thang!" end
}

puts Thang.hello()