=begin

Array.select

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.select {|item| block } -> new_ary
  ary.select                 -> an_enumerator

------------------------------------------------------------------------------

Invokes the block passing in successive elements from self,
returning an array containing those elements for which the block
returns a true value
(equivalent to Enumerable#select).

If no block is given, an enumerator is returned instead.

  a = %w{ a b c d e f }
  
  a.select {|v| v =~ /[aeiou]/}   
  #=> ["a", "e"]

=end