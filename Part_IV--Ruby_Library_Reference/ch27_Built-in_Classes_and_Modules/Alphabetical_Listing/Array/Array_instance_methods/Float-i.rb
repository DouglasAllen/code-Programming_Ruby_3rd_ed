=begin

Array#Float

(from ~/.rdoc)
Implementation from Kernel
------------------------------------------------------------------------------
  Float(arg)    -> float

------------------------------------------------------------------------------

Returns arg converted to a float. Numeric types are converted directly,
the rest are converted using arg.to_f. As of Ruby1.8, converting
nil generates a TypeError.

  Float(1)           #=> 1.0
  Float("123.456")   #=> 123.456

=end