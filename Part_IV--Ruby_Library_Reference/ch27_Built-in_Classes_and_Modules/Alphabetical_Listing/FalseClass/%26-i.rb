=begin

FalseClass#&

(from ruby core)
------------------------------------------------------------------------------
  false & obj   -> false
  nil & obj     -> false

------------------------------------------------------------------------------

And---Returns false. obj is alwaysevaluated as it is the
argument to a method call---there is noshort-circuit evaluation in this case.

def lookup(val)
  puts "Looking up #{val}"
  return true
end

false && lookup("cat")
However, this code, using &, will:
false & lookup("cat")
produces:
Looking up cat

=end

def lookup(val)
  puts "Looking up #{val}"
  return true
end

false && lookup("cat")
false & lookup("cat")
