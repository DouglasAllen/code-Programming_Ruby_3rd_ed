=begin

Array.keep_if

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.keep_if {|item| block } -> ary
  ary.keep_if                 -> an_enumerator

------------------------------------------------------------------------------

Deletes every element of self for which block evaluates to false.
See also Array#select!

If no block is given, an enumerator is returned instead.

  a = %w{ a b c d e f }
  a.keep_if {|v| v =~ /[aeiou]/}   #=> ["a", "e"]

=end