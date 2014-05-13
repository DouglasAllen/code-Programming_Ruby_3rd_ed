Interrupt.public_methods(false).sort.each do |method| 
  puts method
end
puts
Interrupt.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Interrupt.constants.sort.each do |constant| 
  puts constant
end
puts
puts Interrupt.superclass