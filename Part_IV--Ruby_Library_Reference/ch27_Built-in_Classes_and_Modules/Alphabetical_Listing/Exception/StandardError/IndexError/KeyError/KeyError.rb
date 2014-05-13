KeyError.public_methods(false).sort.each do |method| 
  puts method
end
puts
KeyError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
KeyError.constants.sort.each do |constant| 
  puts constant
end
puts
puts KeyError.superclass