Fiber.public_methods(false).sort.each do |method| 
  puts method
end
puts
Fiber.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Fiber.constants.sort.each do |constant| 
  puts constant
end

puts
puts Fiber.superclass