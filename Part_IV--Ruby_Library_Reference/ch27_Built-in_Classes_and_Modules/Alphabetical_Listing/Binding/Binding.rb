
Binding.public_methods(false).sort.each do |method| 
  puts method
end
puts
Binding.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Binding.constants.sort.each do |constant| 
  puts constant
end

puts
puts Binding.superclass