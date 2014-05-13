NameError.public_methods(false).sort.each do |method| 
  puts method
end
puts
NameError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
NameError.constants.sort.each do |constant| 
  puts constant
end

puts
puts NameError.superclass