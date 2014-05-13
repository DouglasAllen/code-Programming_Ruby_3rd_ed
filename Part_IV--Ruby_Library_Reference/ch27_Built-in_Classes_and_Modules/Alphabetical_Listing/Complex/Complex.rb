Complex.public_methods(false).sort.each do |method| 
  puts method
end
puts
Complex.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Complex.constants.sort.each do |constant| 
  puts constant
end

puts
puts Complex.superclass