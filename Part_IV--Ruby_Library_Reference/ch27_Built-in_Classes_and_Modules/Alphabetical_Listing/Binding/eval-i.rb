=begin

Binding#eval

(from ruby core)
------------------------------------------------------------------------------
  binding.eval(string [, filename [,lineno]])  -> obj

------------------------------------------------------------------------------

Evaluates the Ruby expression(s) in string, in thebinding's
context.  If the optional filename andlineno parameters are
present, they will be used whenreporting syntax errors.

       def getBinding(param)
         return binding
       end
       b = getBinding("hello")
       b.eval("param")   #=> "hello"
       
=end

def getBinding(param)
  return binding
end

b = getBinding("hello")
puts b.eval("param")   #=> "hello"