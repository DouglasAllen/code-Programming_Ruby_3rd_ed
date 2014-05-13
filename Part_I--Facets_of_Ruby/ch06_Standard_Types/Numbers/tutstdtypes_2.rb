#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
p 123456
# => 123456
p 123456.class
# Fixnum

p 0d123456
# => 123456
p 0d123456.class
# Fixnum

p 123_456
# => 123456
p 123_456.class
# Fixnum - underscore ignored

p -543
# => -543
p -543.class
# Fixnum - negative number

p 0xaabb
# => 43707
p 0xaabb.class
# Fixnum - hexadecimal

p 0377
# => 255
p 0377.class
# Fixnum - octal

p -0b10_1010
# => -42
p -0b10_1010.class
# Fixnum - binary (negated)

p 123_456_789_123_456_789_123_456
# => 123456789123456789
p 123_456_789_123_456_789_123_456.class
# Bignum