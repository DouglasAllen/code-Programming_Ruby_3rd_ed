=begin

NilClass#&

(from ruby core)
------------------------------------------------------------------------------
  false & obj   -> false
  nil & obj     -> false

------------------------------------------------------------------------------

And---Returns false. obj is always evaluated as it is the
argument to a method call---there is no short-circuit evaluation in this case.

=end

nil && puts("logical and")
nil & puts("and")
(nil & puts("and")).class