# Array#*.rb
# Array#Repetition.rb

=begin

Array#*

------------------------------------------------------------------------------
  ary * int     -> new_ary
  ary * str     -> new_string

------------------------------------------------------------------------------

Repetition---With a String argument, equivalent to self.join(str). Otherwise,
returns a new array built by concatenating the int copies of self.

  [ 1, 2, 3 ] * 3    #=> [ 1, 2, 3, 1, 2, 3, 1, 2, 3 ]
  [ 1, 2, 3 ] * ","  #=> "1,2,3"


=end

# ruby Array#*.rb
# ruby Array#Repetition.rb

puts "
#{[ 1, 2, 3 ] * 3}
#{[ 1, 2, 3 ] * ","}
#{[ 1, 2, 3 ].* 3}
#{[ 1, 2, 3 ].* ","}
"