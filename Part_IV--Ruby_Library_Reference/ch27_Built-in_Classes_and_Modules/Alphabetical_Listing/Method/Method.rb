Method.public_methods(false).sort.each do |method| 
  puts method
end
puts
Method.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Method.constants.sort.each do |constant| 
  puts constant
end

puts
puts Method.superclass