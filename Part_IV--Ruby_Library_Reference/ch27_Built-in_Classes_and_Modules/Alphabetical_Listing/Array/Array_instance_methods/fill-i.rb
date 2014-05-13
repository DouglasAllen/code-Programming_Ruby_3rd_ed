=begin

Array.fill

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.fill(obj)                                -> ary
  ary.fill(obj, start [, length])              -> ary
  ary.fill(obj, range )                        -> ary
  ary.fill {|index| block }                    -> ary
  ary.fill(start [, length] ) {|index| block } -> ary
  ary.fill(range) {|index| block }             -> ary

------------------------------------------------------------------------------

The first three forms set the selected elements of self (which may be
the entire array) to obj. A start of nil is equivalent to
zero. A length of nil is equivalent to self.length. The
last three forms fill the array with the value of the block. The block is passed
the absolute index of each element to be filled. Negative values of
start count from the end of the array.

  a = [ "a", "b", "c", "d" ]
  a.fill("x")              #=> ["x", "x", "x", "x"]
  a.fill("z", 2, 2)        #=> ["x", "x", "z", "z"]
  a.fill("y", 0..1)        #=> ["y", "y", "z", "z"]
  a.fill {|i| i*i}         #=> [0, 1, 4, 9]
  a.fill(-2) {|i| i*i*i}   #=> [0, 1, 8, 27]


=end