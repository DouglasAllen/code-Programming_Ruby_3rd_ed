LoadError.public_methods(false).sort.each do |method| 
  puts method
end
puts
LoadError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
LoadError.constants.sort.each do |constant| 
  puts constant
end
puts
puts LoadError.superclass