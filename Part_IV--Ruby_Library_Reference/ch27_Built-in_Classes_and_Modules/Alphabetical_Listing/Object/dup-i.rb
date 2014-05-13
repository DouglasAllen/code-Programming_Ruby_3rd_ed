=begin

Object#dup

(from ~/.rdoc)
------------------------------------------------------------------------------
  obj.dup -> an_object

------------------------------------------------------------------------------

Produces a shallow copy of obj---the instance variables of obj
are copied, but not the objects they reference. dup copies the tainted
state of obj. See also the discussion under Object#clone. In
general, clone and dup may have different semantics in descendant
classes. While clone is used to duplicatean object, including its
internal state, dup typically uses the class of the descendant object to
create the new instance.

This method may have class-specific behavior.  If so, that behavior will be
documented under the #initialize_copy method of the class.


=end