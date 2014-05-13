=begin

Array#<<

ary << obj → ary click to toggle source 
Append—Pushes the given object on to the end of this array.
This expression returns the array itself, so several appends may be chained together.

[ 1, 2 ] << "c" << "d" << [ 3, 4 ]
        #=>  [ 1, 2, "c", "d", [ 3, 4 ] ]


=end