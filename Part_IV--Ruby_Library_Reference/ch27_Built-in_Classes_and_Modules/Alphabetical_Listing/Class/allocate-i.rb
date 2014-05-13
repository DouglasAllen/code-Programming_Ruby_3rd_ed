=begin

Class.allocate

(from ~/.rdoc)
------------------------------------------------------------------------------
  class.allocate()   ->   obj

------------------------------------------------------------------------------

Allocates space for a new object of class's class and does not call
initialize on the new instance. The returned object must be an instance of
class.

  klass = Class.new do
    def initialize(*args)
      @initialized = true
    end

    def initialized?
      @initialized || false
    end
  end

  klass.allocate.initialized? #=> false
  
=end