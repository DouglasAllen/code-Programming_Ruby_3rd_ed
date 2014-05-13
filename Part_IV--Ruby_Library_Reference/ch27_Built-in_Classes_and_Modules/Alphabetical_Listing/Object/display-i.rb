=begin

Object#display

(from ~/.rdoc)
------------------------------------------------------------------------------
  obj.display(port=$>)    -> nil

------------------------------------------------------------------------------

Prints obj on the given port (default $>).
Equivalent to:

  def display(port=$>)
    port.write self
  end

For example:

  1.display
  "cat".display
  [ 4, 5, 6 ].display
  puts

produces:

  1cat456
  
=end