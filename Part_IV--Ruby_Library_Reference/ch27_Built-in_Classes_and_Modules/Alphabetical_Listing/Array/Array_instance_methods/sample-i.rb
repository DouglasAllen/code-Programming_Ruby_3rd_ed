=begin

Array.sample

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.sample                  -> obj
  ary.sample(random: rng)     -> obj
  ary.sample(n)               -> new_ary
  ary.sample(n, random: rng)  -> new_ary

------------------------------------------------------------------------------

Choose a random element or n random elements from the array. 
The elements are chosen by using random and unique indices 
into the array in order to ensure that an element doesn't 
repeat itself unless the array already contained duplicate elements. 
If the array is empty the first form returns nil and 
the second form returns an empty array.

If rng is given, it will be used as the random number generator.


=end