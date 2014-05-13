=begin

Binding.clone

(from ~/.rdoc)
Implementation from Object
------------------------------------------------------------------------------
  obj.clone -> an_object

------------------------------------------------------------------------------

Produces a shallow copy of obj---the instance variables of obj
are copied, but not the objects they reference. Copies the frozen and tainted
state of obj. See also the discussion under Object#dup.

  class Klass
     attr_accessor :str
  end
  s1 = Klass.new      #=> #<Klass:0x401b3a38>
  s1.str = "Hello"    #=> "Hello"
  s2 = s1.clone       #=> #<Klass:0x401b3998 @str="Hello">
  s2.str[1,4] = "i"   #=> "i"
  s1.inspect          #=> "#<Klass:0x401b3a38 @str=\"Hi\">"
  s2.inspect          #=> "#<Klass:0x401b3998 @str=\"Hi\">"

This method may have class-specific behavior.  If so, that behavior will be
documented under the #initialize_copy method of the class.

=end

class Klass
     attr_accessor :str
end

s1 = Klass.new
s1.str = "Hello"
s2 = s1.clone
s2.str[1,4] = "i"
puts "
#{s1.inspect}
#{s2.inspect}
"