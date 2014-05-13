=begin

Array.repeated_permutation

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.repeated_permutation(n) { |p| block } -> ary
  ary.repeated_permutation(n)               -> an_enumerator

------------------------------------------------------------------------------

When invoked with a block, yield all repeated permutations of length n
of the elements of ary, then return the array itself.
The implementation makes no guarantees about the order in which
the repeated permutations are yielded.

If no block is given, an enumerator is returned instead.

Examples:

  a = [1, 2]
  a.repeated_permutation(1).to_a  #=> [[1], [2]]
  a.repeated_permutation(2).to_a  #=> [[1,1],[1,2],[2,1],[2,2]]
  a.repeated_permutation(3).to_a  #=> [[1,1,1],[1,1,2],[1,2,1],[1,2,2],
                                  #    [2,1,1],[2,1,2],[2,2,1],[2,2,2]]
  a.repeated_permutation(0).to_a  #=> [[]] # one permutation of length 0


=end