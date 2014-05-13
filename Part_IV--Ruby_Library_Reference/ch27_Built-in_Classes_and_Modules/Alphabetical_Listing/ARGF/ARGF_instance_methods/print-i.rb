text = <<ET

= ARGF#print

(from ~/.ri)
------------------------------------------------------------------------------
  ios.print()             -> nil
  ios.print(obj, ...)     -> nil

------------------------------------------------------------------------------

Writes the given object(s) to ios. The stream must be opened for
writing. If the output field separator ($,) is not nil, it will be inserted
between each object. If the output record separator ($\</code>) is not
<code>nil, it will be appended to the output. If no arguments are given,
prints $_. Objects that aren't strings will be converted by calling their to_s
method. With no argument, prints the contents of the variable $_. Returns nil.

  $stdout.print("This is ", 100, " percent.\n")

produces:

  This is 100 percent.
  
ET

# ruby ARGF#print.rb

$stdout.print("This is ", 100, " percent.\n")
 