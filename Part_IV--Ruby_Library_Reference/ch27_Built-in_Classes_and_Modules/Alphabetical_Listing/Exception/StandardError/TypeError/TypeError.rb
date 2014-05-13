TypeError.public_methods(false).sort.each do |method| 
  puts method
end
puts
TypeError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
TypeError.constants.sort.each do |constant| 
  puts constant
end
puts
puts TypeError.superclass