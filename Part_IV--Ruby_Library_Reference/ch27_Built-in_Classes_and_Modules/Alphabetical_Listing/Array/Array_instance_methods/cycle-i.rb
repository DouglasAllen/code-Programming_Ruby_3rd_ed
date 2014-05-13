=begin

Array.cycle

(from ~/.rdoc)
------------------------------------------------------------------------------
  ary.cycle(n=nil) {|obj| block }  -> nil
  ary.cycle(n=nil)                 -> an_enumerator

------------------------------------------------------------------------------

Calls block for each element repeatedly n times or forever if
none or nil is given.  If a non-positive number is given or the array is
empty, does nothing.  Returns nil if the loop has finished without
getting interrupted.

If no block is given, an enumerator is returned instead.

  a = ["a", "b", "c"]
  a.cycle {|x| puts x }  # print, a, b, c, a, b, c,.. forever.
  a.cycle(2) {|x| puts x }  # print, a, b, c, a, b, c.

=end