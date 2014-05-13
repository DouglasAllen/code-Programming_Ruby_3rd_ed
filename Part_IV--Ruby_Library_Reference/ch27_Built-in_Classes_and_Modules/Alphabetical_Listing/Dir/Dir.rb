Dir.public_methods(false).sort.each do |method| 
  puts method
end
puts
Dir.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Dir.constants.sort.each do |constant| 
  puts constant
end

puts
puts Dir.superclass