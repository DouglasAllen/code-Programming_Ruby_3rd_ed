IOError.public_methods(false).sort.each do |method| 
  puts method
end
puts
IOError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
IOError.constants.sort.each do |constant| 
  puts constant
end
puts
puts IOError.superclass