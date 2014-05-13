=begin

Array#<=>

ary <=> other_ary → -1, 0, +1 or nil click to toggle source 
Comparison—Returns an integer (-1, 0, or +1) if this array is less than, equal to, or greater than other_ary.
Each object in each array is compared (using <=>).
If any value isn’t equal, then that inequality is the return value.
If all the values found are equal, then the return is based on a comparison of the array lengths.
Thus, two arrays are “equal” according to Array#<=> if and only if they have the same length and the value of
each element is equal to the value of the corresponding element in the other array.

[ "a", "a", "c" ]    <=> [ "a", "b", "c" ]   #=> -1
[ 1, 2, 3, 4, 5, 6 ] <=> [ 1, 2 ]            #=> +1


=end