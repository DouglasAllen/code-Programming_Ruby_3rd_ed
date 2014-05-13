=begin

Array#[]=

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary[index]         = obj                      ->  obj
  ary[start, length] = obj or other_ary or nil  ->  obj or other_ary or nil
  ary[range]         = obj or other_ary or nil  ->  obj or other_ary or nil

------------------------------------------------------------------------------

Element Assignment---Sets the element at index, or replaces a subarray
starting at start and continuing for length elements, or replaces
a subarray specified by range.  If indices are greater than the current
capacity of the array, the array grows automatically. A negative indices will
count backward from the end of the array. Inserts elements if length
is zero. An IndexError is raised if a negative index points past the
beginning of the array. See also Array#push, and Array#unshift.

  a = Array.new
  a[4] = "4";                 #=> [nil, nil, nil, nil, "4"]
  a[0, 3] = [ 'a', 'b', 'c' ] #=> ["a", "b", "c", nil, "4"]
  a[1..2] = [ 1, 2 ]          #=> ["a", 1, 2, nil, "4"]
  a[0, 2] = "?"               #=> ["?", 2, nil, "4"]
  a[0..2] = "A"               #=> ["A", "4"]
  a[-1]   = "Z"               #=> ["A", "Z"]
  a[1..-1] = nil              #=> ["A", nil]
  a[1..-1] = []               #=> ["A"]



=end