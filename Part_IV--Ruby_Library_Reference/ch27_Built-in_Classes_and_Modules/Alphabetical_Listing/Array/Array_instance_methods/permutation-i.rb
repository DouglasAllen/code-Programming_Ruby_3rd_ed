=begin

Array.permutation

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.permutation { |p| block }          -> ary
  ary.permutation                        -> an_enumerator
  ary.permutation(n) { |p| block }       -> ary
  ary.permutation(n)                     -> an_enumerator

------------------------------------------------------------------------------

When invoked with a block, yield all permutations of length n of the
elements of ary, then return the array itself. If n is not specified,
yield all permutations of all elements. The implementation makes no
guarantees about the order in which the permutations are yielded.

If no block is given, an enumerator is returned instead.

Examples:

  a = [1, 2, 3]
  a.permutation.to_a     #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
  a.permutation(1).to_a  #=> [[1],[2],[3]]
  a.permutation(2).to_a  #=> [[1,2],[1,3],[2,1],[2,3],[3,1],[3,2]]
  a.permutation(3).to_a  #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
  a.permutation(0).to_a  #=> [[]] # one permutation of length 0
  a.permutation(4).to_a  #=> []   # no permutations of length 4


=end