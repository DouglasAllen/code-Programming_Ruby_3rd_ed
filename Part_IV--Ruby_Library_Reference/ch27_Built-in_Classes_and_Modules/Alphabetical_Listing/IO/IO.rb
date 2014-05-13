IO.public_methods(false).sort.each do |method| 
  puts method
end
puts
IO.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
IO.constants.sort.each do |constant| 
  puts constant
end

puts
puts IO.superclass