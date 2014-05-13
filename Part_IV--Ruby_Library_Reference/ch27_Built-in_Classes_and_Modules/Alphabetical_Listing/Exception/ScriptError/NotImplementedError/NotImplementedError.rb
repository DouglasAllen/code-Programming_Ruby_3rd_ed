NotImplementedError.public_methods(false).sort.each do |method| 
  puts method
end
puts
NotImplementedError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
NotImplementedError.constants.sort.each do |constant| 
  puts constant
end
puts
puts NotImplementedError.superclass