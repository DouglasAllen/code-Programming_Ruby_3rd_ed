IndexError.public_methods(false).sort.each do |method| 
  puts method
end
puts
IndexError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
IndexError.constants.sort.each do |constant| 
  puts constant
end

puts
puts IndexError.superclass