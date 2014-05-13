Numeric.public_methods(false).sort.each do |method| 
  puts method
end
puts
Numeric.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Numeric.constants.sort.each do |constant| 
  puts constant
end

puts
puts Numeric.superclass