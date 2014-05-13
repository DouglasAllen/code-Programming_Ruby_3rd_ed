Module.public_methods(false).sort.each do |method| 
  puts method
end
puts
Module.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Module.instance_methods(false).sort.each do |method| 
  puts method
end
puts
Module.constants.sort.each do |constant| 
  puts constant
end

puts
puts Module.superclass