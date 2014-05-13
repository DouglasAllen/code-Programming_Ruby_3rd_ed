UnboundMethod.public_methods(false).sort.each do |method| 
  puts method
end
puts
UnboundMethod.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
UnboundMethod.constants.sort.each do |constant| 
  puts constant
end

puts UnboundMethod.superclass