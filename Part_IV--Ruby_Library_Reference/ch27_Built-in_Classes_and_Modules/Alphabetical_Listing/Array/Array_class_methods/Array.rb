Array.public_methods(false).sort.each do |method| 
  puts method
end
puts
Array.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Array.constants.sort.each do |constant| 
  puts constant
end

puts
puts Array.superclass