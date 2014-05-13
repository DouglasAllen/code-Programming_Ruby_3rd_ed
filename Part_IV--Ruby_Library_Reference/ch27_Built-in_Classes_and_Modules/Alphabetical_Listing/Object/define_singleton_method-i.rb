=begin

Object#define_singleton_method

(from ~/.rdoc)
------------------------------------------------------------------------------
  define_singleton_method(symbol, method) -> new_method
  define_singleton_method(symbol) { block } -> proc

------------------------------------------------------------------------------

Defines a singleton method in the receiver. The _method_parameter can be a
Proc, a Method or an UnboundMethod object.If a block is
specified, it is used as the method body.

  class A
    class << self
      def class_name
        to_s
      end
    end
  end
  A.define_singleton_method(:who_am_i) do
    "I am: #{class_name}"
  end
  A.who_am_i   # ==> "I am: A"

  guy = "Bob"
  guy.define_singleton_method(:hello) { "#{self}: Hello there!" }
  guy.hello    #=>  "Bob: Hello there!"
  
=end