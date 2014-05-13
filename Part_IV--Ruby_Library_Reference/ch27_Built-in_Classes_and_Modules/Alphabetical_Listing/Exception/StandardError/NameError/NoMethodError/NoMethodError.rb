NoMethodError.public_methods(false).sort.each do |method| 
  puts method
end
puts
NoMethodError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
NoMethodError.constants.sort.each do |constant| 
  puts constant
end
puts
puts NoMethodError.superclass