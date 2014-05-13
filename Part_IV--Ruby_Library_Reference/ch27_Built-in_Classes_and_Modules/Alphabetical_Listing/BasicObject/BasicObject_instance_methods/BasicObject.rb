BasicObject.public_methods(false).sort.each do |method| 
  puts method
end
puts
BasicObject.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
BasicObject.constants.sort.each do |constant| 
  puts constant
end
puts
puts BasicObject.superclass