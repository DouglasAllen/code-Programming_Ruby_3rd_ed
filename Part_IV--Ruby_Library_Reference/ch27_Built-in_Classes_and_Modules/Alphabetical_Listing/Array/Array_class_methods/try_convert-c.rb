=begin

Array::try_convert
Array.try_convert

(from ~/.rdoc)
------------------------------------------------------------------------------

  Array.try_convert(obj) -> array or nil

------------------------------------------------------------------------------

Try to convert obj into an array, using to_ary method.
Returns converted array or nil if obj cannot be converted
for any reason. This method can be used to check if an argument is an
array.

  Array.try_convert([1])  #=> [1]
  
  Array.try_convert("1")  #=> nil

  if tmp = Array.try_convert(arg)
    # the argument is an array
  elsif tmp = String.try_convert(arg)
    # the argument is a string
  end


=end
puts "
#{Array.try_convert([1])}\n
#{Array.try_convert("1")}\n
#{arg = [1]}\n
#{if tmp = Array.try_convert(arg)
    'the argument is an array'
  elsif tmp = String.try_convert(arg)
    'the argument is a string'
  end}\n

#{arg = "1"}\n
#{if tmp = Array.try_convert(arg)
    'the argument is an array'
  elsif tmp = String.try_convert(arg)
    'the argument is a string'
  end}\n  
"