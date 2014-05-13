=begin

Array.product

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.product(other_ary, ...)                -> new_ary
  ary.product(other_ary, ...) { |p| block }  -> ary

------------------------------------------------------------------------------

Returns an array of all combinations of elements from all arrays. The length of
the returned array is the product of the length of self and the argument
arrays. If given a block, product will yield all combinations and return
self instead.

  [1,2,3].product([4,5])     #=> [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]
  [1,2].product([1,2])       #=> [[1,1],[1,2],[2,1],[2,2]]
  [1,2].product([3,4],[5,6]) #=> [[1,3,5],[1,3,6],[1,4,5],[1,4,6],
                             #     [2,3,5],[2,3,6],[2,4,5],[2,4,6]]
  [1,2].product()            #=> [[1],[2]]
  [1,2].product([])          #=> []

=end