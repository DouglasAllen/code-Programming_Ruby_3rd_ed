SystemCallError.public_methods(false).sort.each do |method| 
  puts method
end
puts
SystemCallError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
SystemCallError.constants.sort.each do |constant| 
  puts constant
end
puts
puts SystemCallError.superclass