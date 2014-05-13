=begin

Object#Integer

(from ~/.rdoc)
Implementation from Kernel
------------------------------------------------------------------------------
  Integer(arg,base=0)    -> integer

------------------------------------------------------------------------------

Converts arg to a Fixnum or Bignum.Numeric types are
converted directly (with floating point numbersbeing truncated).
base (0, or between 2 and 36) is a base forinteger string
representation.  If arg is a String,when base is omitted
or equals to zero, radix indicators(0, 0b, and 0x) are
honored.In any case, strings should be strictly conformed to
numericrepresentation. This behavior is different from that
ofString#to_i.  Non string values will be converted usingto_int,
and to_i.

  Integer(123.999)    #=> 123
  Integer("0x1a")     #=> 26
  Integer(Time.new)   #=> 1204973019
  Integer("0930", 10) #=> 930
  Integer("111", 2)   #=> 7

=end