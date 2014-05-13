=begin

Bignum < Integer

(from ruby core)
------------------------------------------------------------------------------
Bignum objects hold integers outside the range ofFixnum. Bignum objects are
createdautomatically when integer calculations would otherwise overflow
aFixnum. When a calculation involvingBignum objects returns a result that will
fit in aFixnum, the result is automatically converted.

For the purposes of the bitwise operations and [], aBignum is treated
as if it were an infinite-lengthbitstring with 2's complement representation.

While Fixnum values are immediate, Bignumobjects are not---assignment and
parameter passing work withreferences to objects, not the objects themselves.

------------------------------------------------------------------------------
Instance methods:

  %, &, *, **, +, -, -@, /, <, <<, <=, <=>, ==, ===, >, >=, >>, [], ^, abs,
  coerce, div, divmod, eql?, even?, fdiv, hash, magnitude, modulo, odd?,
  power!, remainder, size, to_f, to_s, |, ~
  
=end

