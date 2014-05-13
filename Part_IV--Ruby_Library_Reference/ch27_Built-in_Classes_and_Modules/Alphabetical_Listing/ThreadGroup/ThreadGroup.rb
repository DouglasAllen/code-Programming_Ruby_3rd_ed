ThreadGroup.public_methods(false).sort.each do |method| 
  puts method
end
puts
ThreadGroup.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
ThreadGroup.constants.sort.each do |constant| 
  puts constant
end

puts
puts ThreadGroup.superclass