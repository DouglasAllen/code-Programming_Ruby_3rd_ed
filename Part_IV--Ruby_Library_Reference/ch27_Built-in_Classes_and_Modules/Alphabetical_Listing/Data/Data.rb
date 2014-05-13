Data.public_methods(false).sort.each do |method| 
  puts method
end
puts
Data.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Data.constants.sort.each do |constant| 
  puts constant
end

puts
puts Data.superclass