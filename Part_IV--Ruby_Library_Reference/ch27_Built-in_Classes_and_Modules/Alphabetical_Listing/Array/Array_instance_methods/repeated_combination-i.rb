=begin

Array.repeated_combination

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.repeated_combination(n) { |c| block } -> ary
  ary.repeated_combination(n)               -> an_enumerator

------------------------------------------------------------------------------

When invoked with a block, yields all repeated combinations of length n
of elements from ary and then returns ary itself.
The implementation makes no guarantees about the order in which 
the repeated combinations are yielded.

If no block is given, an enumerator is returned instead.

Examples:

  a = [1, 2, 3]
  a.repeated_combination(1).to_a  #=> [[1], [2], [3]]
  a.repeated_combination(2).to_a  #=> [[1,1],[1,2],[1,3],[2,2],[2,3],[3,3]]
  a.repeated_combination(3).to_a  #=> [[1,1,1],[1,1,2],[1,1,3],[1,2,2],[1,2,3],
                                  #    [1,3,3],[2,2,2],[2,2,3],[2,3,3],[3,3,3]]
  a.repeated_combination(4).to_a  #=> [[1,1,1,1],[1,1,1,2],[1,1,1,3],[1,1,2,2],[1,1,2,3],
                                  #    [1,1,3,3],[1,2,2,2],[1,2,2,3],[1,2,3,3],[1,3,3,3],
                                  #    [2,2,2,2],[2,2,2,3],[2,2,3,3],[2,3,3,3],[3,3,3,3]]
  a.repeated_combination(0).to_a  #=> [[]] # one combination of length 0


=end