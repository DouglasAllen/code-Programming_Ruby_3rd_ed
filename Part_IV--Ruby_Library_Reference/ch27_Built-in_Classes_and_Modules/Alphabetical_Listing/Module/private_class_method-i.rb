=begin

Module.private_class_method

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.private_class_method(symbol, ...)   -> mod

------------------------------------------------------------------------------

Makes existing class methods private. Often used to hide the
default constructor new.

  class SimpleSingleton  # Not thread safe
    private_class_method :new
    def SimpleSingleton.create(*args, &block)
      @me = new(*args, &block) if ! @me
      @me
    end
  end
  
=end

class SimpleSingleton  # Not thread safe
  private_class_method :new
  def SimpleSingleton.create(*args, &block)
    @me = new(*args, &block) if ! @me
    @me
  end
end

#~ ss = SimpleSingleton.new
ssc = SimpleSingleton.create
p ssc