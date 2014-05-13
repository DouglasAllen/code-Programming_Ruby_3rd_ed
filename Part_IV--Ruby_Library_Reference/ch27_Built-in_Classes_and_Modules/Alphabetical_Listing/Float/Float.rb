Float.public_methods(false).sort.each do |method| 
  puts method
end
puts
Float.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Float.constants.sort.each do |constant| 
  puts constant
end

puts
puts Float.superclass