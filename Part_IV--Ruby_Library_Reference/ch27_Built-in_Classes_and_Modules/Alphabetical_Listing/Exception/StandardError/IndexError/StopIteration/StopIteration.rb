StopIteration.public_methods(false).sort.each do |method| 
  puts method
end
puts
StopIteration.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
StopIteration.constants.sort.each do |constant| 
  puts constant
end

puts
puts StopIteration.superclass