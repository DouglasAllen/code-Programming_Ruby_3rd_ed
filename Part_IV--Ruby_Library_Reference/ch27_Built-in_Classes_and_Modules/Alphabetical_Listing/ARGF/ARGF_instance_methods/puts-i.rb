text = <<ET

= ARGF#puts

(from ~/.ri)
------------------------------------------------------------------------------
  ios.puts(obj, ...)    -> nil

------------------------------------------------------------------------------

Writes the given objects to ios as with IO#print. Writes a record
separator (typically a newline) after any that do not already end with a
newline sequence. If called with an array argument, writes each element on a
new line. If called without arguments, outputs a single record separator.

  $stdout.puts("this", "is", "a", "test")

produces:

  this
  is
  a
  test
 
ET

# ruby ARGF#puts.rb

$stdout.puts("this", "is", "a", "test")
