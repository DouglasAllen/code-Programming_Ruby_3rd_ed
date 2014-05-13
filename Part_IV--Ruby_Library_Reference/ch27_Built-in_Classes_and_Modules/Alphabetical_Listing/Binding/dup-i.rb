=begin

Binding.dup

(from ~/.rdoc)
Implementation from Object
------------------------------------------------------------------------------

  obj.dup -> an_object

------------------------------------------------------------------------------

Produces a shallow copy of obj---the instance variables of obj
are copied, but not the objects they reference. dup copies the tainted
state of obj. See also the discussion under Object#clone. In
general, clone and dup may have different semantics in descendant
classes. While clone is used to duplicate an object, including its
internal state, dup typically uses the class of the descendant object to
create the new instance.

This method may have class-specific behavior.  If so, that behavior will be
documented under the #initialize_copy method of the class.

=end

class Klass
     attr_accessor :str
end

s1 = Klass.new
s1.str = "Hello"
s2 = s1.dup
s2.str[1,4] = "i"
puts "
#{s1.inspect}
#{s2.inspect}
"