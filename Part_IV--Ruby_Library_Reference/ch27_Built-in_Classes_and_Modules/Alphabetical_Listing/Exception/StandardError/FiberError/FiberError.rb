FiberError.public_methods(false).sort.each do |method| 
  puts method
end
puts
FiberError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
FiberError.constants.sort.each do |constant| 
  puts constant
end
puts
puts FiberError.superclass