RegexpError.public_methods(false).sort.each do |method| 
  puts method
end
puts
RegexpError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
RegexpError.constants.sort.each do |constant| 
  puts constant
end
puts
puts RegexpError.superclass