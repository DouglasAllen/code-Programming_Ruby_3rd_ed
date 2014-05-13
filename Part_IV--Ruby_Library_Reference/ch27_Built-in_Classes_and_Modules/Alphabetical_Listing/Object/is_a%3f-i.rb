=begin

Object#is_a?

(from ~/.rdoc)
------------------------------------------------------------------------------
  obj.is_a?(class)       -> true or false
  obj.kind_of?(class)    -> true or false

------------------------------------------------------------------------------

Returns true if class is the class of obj, or if
class is one of the super classes of obj or modules included in
obj.

  module M;    end
  class A
    include M
  end
  class B < A; end
  class C < B; end

  b = B.new
  b.is_a? A          #=> true
  b.is_a? B          #=> true
  b.is_a? C          #=> false
  b.is_a? M          #=> true

  b.kind_of? A       #=> true
  b.kind_of? B       #=> true
  b.kind_of? C       #=> false
  b.kind_of? M       #=> true
  
=end