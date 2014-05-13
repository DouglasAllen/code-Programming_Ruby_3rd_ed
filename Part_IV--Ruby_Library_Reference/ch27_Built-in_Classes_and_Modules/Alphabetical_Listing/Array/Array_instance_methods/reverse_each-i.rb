=begin

Array.reverse_each

(from ~/.rdoc)
------------------------------------------------------------------------------

  ary.reverse_each {|item| block }   -> ary
  ary.reverse_each                   -> an_enumerator

------------------------------------------------------------------------------

Same as Array#each, but traverses self in reverse order.

  a = [ "a", "b", "c" ]
  a.reverse_each {|x| print x, " " }

produces:

  c b a

=end