# Regexp#=~.rb

=begin

= Regexp#=~

(from ~/.ri)
------------------------------------------------------------------------------
  rxp =~ str    -> integer or nil

------------------------------------------------------------------------------

Match---Matches rxp against str.

  /at/ =~ "input data"   #=> 7
  /ax/ =~ "input data"   #=> nil

If =~ is used with a regexp literal with named captures, captured strings (or
nil) is assigned to local variables named by the capture names.

  /(?<lhs>\w+)\s*=\s*(?<rhs>\w+)/ =~ "  x = y  "
  p lhs    #=> "x"
  p rhs    #=> "y"

If it is not matched, nil is assigned for the variables.

  /(?<lhs>\w+)\s*=\s*(?<rhs>\w+)/ =~ "  x = "
  p lhs    #=> nil
  p rhs    #=> nil

This assignment is implemented in the Ruby parser. The parser detects
'regexp-literal =~ expression' for the assignment. The regexp must be a
literal without interpolation and placed at left hand side.

The assignment does not occur if the regexp is not a literal.

  re = /(?<lhs>\w+)\s*=\s*(?<rhs>\w+)/
  re =~ "  x = y  "
  p lhs    # undefined local variable
  p rhs    # undefined local variable

A regexp interpolation, #{}, also disables the assignment.

  rhs_pat = /(?<rhs>\w+)/
  /(?<lhs>\w+)\s*=\s*#{rhs_pat}/ =~ "x = y"
  p lhs    # undefined local variable

The assignment does not occur if the regexp is placed at the right hand side.

  "  x = y  " =~ /(?<lhs>\w+)\s*=\s*(?<rhs>\w+)/
  p lhs, rhs # undefined local variable

=end

# ruby Regexp#=~.rb 

p /at/ =~ "input data"   #=> 7
p /ax/ =~ "input data"   #=> nil 
