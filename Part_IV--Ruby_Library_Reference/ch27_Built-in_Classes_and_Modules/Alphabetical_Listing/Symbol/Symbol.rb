Symbol.public_methods(false).sort.each do |method| 
  puts method
end
puts
Symbol.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Symbol.constants.sort.each do |constant| 
  puts constant
end

puts
puts Symbol.superclass