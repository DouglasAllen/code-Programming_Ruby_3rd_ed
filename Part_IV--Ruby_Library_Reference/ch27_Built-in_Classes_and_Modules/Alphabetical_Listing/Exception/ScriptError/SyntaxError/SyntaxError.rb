SyntaxError.public_methods(false).sort.each do |method| 
  puts method
end
puts
SyntaxError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
SyntaxError.constants.sort.each do |constant| 
  puts constant
end
puts
puts SyntaxError.superclass