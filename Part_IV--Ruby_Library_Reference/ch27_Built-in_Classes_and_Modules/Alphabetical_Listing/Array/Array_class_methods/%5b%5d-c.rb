=begin

Array::[]
Array.[]

(from ~/.rdoc)
------------------------------------------------------------------------------

  [](*args)

------------------------------------------------------------------------------

Returns a new array populated with the given objects.

  Array.[]( 1, 'a', /^A/ )
  Array[ 1, 'a', /^A/ ]
  [ 1, 'a', /^A/ ]


(from ~/.rdoc)
------------------------------------------------------------------------------

  ary[index]                -> obj     or nil
  ary[start, length]        -> new_ary or nil
  ary[range]                -> new_ary or nil
  ary.slice(index)          -> obj     or nil
  ary.slice(start, length)  -> new_ary or nil
  ary.slice(range)          -> new_ary or nil

------------------------------------------------------------------------------

Element Reference---Returns the element at index, or returns a subarray
starting at start and continuing for length elements, or returns
a subarray specified by range. Negative indices count backward from the
end of the array (-1 is the last element). Returns nil if the index (or
starting index) are out of range.

  a = [ "a", "b", "c", "d", "e" ]
  a[2] +  a[0] + a[1]    #=> "cab"
  a[6]                   #=> nil
  a[1, 2]                #=> [ "b", "c" ]
  a[1..3]                #=> [ "b", "c", "d" ]
  a[4..7]                #=> [ "e" ]
  a[6..10]               #=> nil
  a[-3, 3]               #=> [ "c", "d", "e" ]
  # special cases
  a[5]                   #=> nil
  a[5, 1]                #=> []
  a[5..10]               #=> []

=end
puts "
#{Array.[]( 1, 'a', /^A/ )}\n
#{Array[ 1, 'a', /^A/ ]}\n
#{[ 1, 'a', /^A/ ]}\n
#{a = [ "a", "b", "c", "d", "e" ]}\n
#{a[2] +  a[0] + a[1]}\n
#{a[6]}\n
#{a[1, 2]}\n
#{a[1..3]}\n
#{a[4..7]}\n
#{a[6..10]}\n
#{a[-3, 3]}\n
#{a.slice(2)}\n
#{a.slice(2, 2)}\n
#{a.slice(2..3)}\n
#{a[5]}\n
#{a[5, 1]}\n
#{a[5..10]}\n
"