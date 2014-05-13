String.public_methods(false).sort.each do |method| 
  puts method
end
puts
String.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
String.constants.sort.each do |constant| 
  puts constant
end

puts
puts String.superclass