Mutex.public_methods(false).sort.each do |method| 
  puts method
end
puts
Mutex.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Mutex.constants.sort.each do |constant| 
  puts constant
end

puts
puts Mutex.superclass