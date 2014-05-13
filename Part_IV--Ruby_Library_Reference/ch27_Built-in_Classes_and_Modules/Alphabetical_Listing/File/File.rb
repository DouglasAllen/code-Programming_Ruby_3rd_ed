File.public_methods(false).sort.each do |method| 
  puts method
end
puts
File.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
File.constants.sort.each do |constant| 
  puts constant
end

puts
puts File.superclass