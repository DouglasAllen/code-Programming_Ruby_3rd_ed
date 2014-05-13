FalseClass.public_methods(false).sort.each do |method| 
  puts method
end
puts
FalseClass.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
FalseClass.constants.sort.each do |constant| 
  puts constant
end

puts
puts FalseClass.superclass