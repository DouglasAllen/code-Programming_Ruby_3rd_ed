RangeError.public_methods(false).sort.each do |method| 
  puts method
end
puts
RangeError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
RangeError.constants.sort.each do |constant| 
  puts constant
end
puts
puts RangeError.superclass