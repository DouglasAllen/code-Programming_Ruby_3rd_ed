=begin

Module.instance_method

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.instance_method(symbol)   -> unbound_method

------------------------------------------------------------------------------

Returns an UnboundMethod representing the given instance method in
mod.

  class Interpreter
    def do_a() print "there, "; end
    def do_d() print "Hello ";  end
    def do_e() print "!\n";     end
    def do_v() print "Dave";    end
    Dispatcher = {
      "a" => instance_method(:do_a),
      "d" => instance_method(:do_d),
      "e" => instance_method(:do_e),
      "v" => instance_method(:do_v)
    }
    def interpret(string)
      string.each_char {|b| Dispatcher[b].bind(self).call }
    end
  end

  interpreter = Interpreter.new
  interpreter.interpret('dave')

produces:

  Hello there, Dave!
  
=end

class Interpreter
  def do_a() print "there, "; end
  def do_d() print "Hello ";  end
  def do_e() print "!\n";     end
  def do_v() print "Dave";    end
  Dispatcher = {
    "a" => instance_method(:do_a),
    "d" => instance_method(:do_d),
    "e" => instance_method(:do_e),
    "v" => instance_method(:do_v)
  }
  def interpret(string)
    string.each_char {|b| Dispatcher[b].bind(self).call }
  end
end

interpreter = Interpreter.new
interpreter.interpret('dave')