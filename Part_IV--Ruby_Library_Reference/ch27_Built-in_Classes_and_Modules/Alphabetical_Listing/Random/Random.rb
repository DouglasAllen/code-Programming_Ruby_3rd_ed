Random.public_methods(false).sort.each do |method| 
  puts method
end
puts
Random.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Random.constants.sort.each do |constant| 
  puts constant
end

puts
puts Random.superclass