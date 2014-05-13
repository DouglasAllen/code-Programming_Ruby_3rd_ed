=begin

Module.include?

(from ~/.rdoc)
------------------------------------------------------------------------------
  mod.include?(module)    -> true or false

------------------------------------------------------------------------------

Returns true if module is included inmod or one of
mod's ancestors.

  module A
  end
  class B
    include A
  end
  class C < B
  end
  B.include?(A)   #=> true
  C.include?(A)   #=> true
  A.include?(A)   #=> false
  
=end

module A
end

class B
  include A
end

class C < B
end

p B.include?(A)   #=> true
p C.include?(A)   #=> true
p A.include?(A)   #=> false