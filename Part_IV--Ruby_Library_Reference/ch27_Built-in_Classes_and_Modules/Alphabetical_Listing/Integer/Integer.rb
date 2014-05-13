Integer.public_methods(false).sort.each do |method| 
  puts method
end
puts
Integer.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Integer.constants.sort.each do |constant| 
  puts constant
end

puts
puts Integer.superclass