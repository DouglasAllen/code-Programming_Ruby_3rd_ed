Time.public_methods(false).sort.each do |method| 
  puts method
end
puts
Time.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Time.constants.sort.each do |constant| 
  puts constant
end

puts
puts Time.superclass