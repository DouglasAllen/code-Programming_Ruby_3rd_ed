SecurityError.public_methods(false).sort.each do |method| 
  puts method
end
puts
SecurityError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
SecurityError.constants.sort.each do |constant| 
  puts constant
end
puts
puts SecurityError.superclass