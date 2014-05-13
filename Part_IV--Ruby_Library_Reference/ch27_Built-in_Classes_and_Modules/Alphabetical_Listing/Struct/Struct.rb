Struct.public_methods(false).sort.each do |method| 
  puts method
end
puts
Struct.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Struct.constants.sort.each do |constant| 
  puts constant
end

puts
puts Struct.superclass