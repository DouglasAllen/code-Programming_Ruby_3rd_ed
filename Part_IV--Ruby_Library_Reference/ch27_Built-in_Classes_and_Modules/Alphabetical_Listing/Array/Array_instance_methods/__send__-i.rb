=begin

Array#__send__

(from ~/.rdoc)
Implementation from BasicObject
------------------------------------------------------------------------------
  obj.send(symbol [, args...])        -> obj
  obj.__send__(symbol [, args...])      -> obj

------------------------------------------------------------------------------

Invokes the method identified by symbol, passing it any arguments
specified. You can use __send__ if the name +send+ clashes with an
existing method in obj.

  class Klass
    def hello(*args)
      "Hello " + args.join(' ')
    end
  end
  k = Klass.new
  k.send :hello, "gentle", "readers"   #=> "Hello gentle readers"

=end

class Hello
  def hello(*args)
    "Hello " + args.join(' ')
  end
end

h = Hello.new
p h.send :hello, "code", "readers"  