Class.public_methods(false).sort.each do |method| 
  puts method
end
puts
Class.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Class.instance_methods(false).sort.each do |method| 
  puts method
end
puts
Class.constants.sort.each do |constant| 
  puts constant
end

puts
puts Class.superclass