=begin

Module::nesting

(from ~/.rdoc)
------------------------------------------------------------------------------
  Module.nesting    -> array

------------------------------------------------------------------------------

Returns the list of Modules nested at the point of call.

  module M1
    module M2
      $a = Module.nesting
    end
  end
  $a           #=> [M1::M2, M1]
  $a[0].name   #=> "M1::M2"

=end

module M1
  module M2
    $a = Module.nesting
  end
end
p $a           #=> [M1::M2, M1]
p $a[0].name   #=> "M1::M2"