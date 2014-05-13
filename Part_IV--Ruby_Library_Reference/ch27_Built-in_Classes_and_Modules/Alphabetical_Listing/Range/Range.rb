Range.public_methods(false).sort.each do |method| 
  puts method
end
puts
Range.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Range.constants.sort.each do |constant| 
  puts constant
end

puts
puts Range.superclass