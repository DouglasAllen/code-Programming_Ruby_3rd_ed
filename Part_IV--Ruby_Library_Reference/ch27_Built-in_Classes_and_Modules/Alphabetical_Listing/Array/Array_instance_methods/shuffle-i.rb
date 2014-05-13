=begin

Array.shuffle

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.shuffle              -> new_ary
  ary.shuffle(random: rng) -> new_ary

------------------------------------------------------------------------------

Returns a new array with elements of this array shuffled.

  a = [ 1, 2, 3 ]           #=> [1, 2, 3]
  a.shuffle                 #=> [2, 3, 1]

If rng is given, it will be used as the random number generator.

  a.shuffle(random: Random.new(1))  #=> [1, 3, 2]

=end