=begin

Array.combination

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.combination(n) { |c| block }    -> ary
  ary.combination(n)                  -> an_enumerator

------------------------------------------------------------------------------

When invoked with a block, yields all combinations of length n of
elements from ary and then returns ary itself. The implementation
makes no guarantees about the order in which the combinations are yielded.

If no block is given, an enumerator is returned instead.

Examples:

  a = [1, 2, 3, 4]
  a.combination(1).to_a  #=> [[1],[2],[3],[4]]
  a.combination(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
  a.combination(3).to_a  #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
  a.combination(4).to_a  #=> [[1,2,3,4]]
  a.combination(0).to_a  #=> [[]] # one combination of length 0
  a.combination(5).to_a  #=> []   # no combinations of length 5


=end