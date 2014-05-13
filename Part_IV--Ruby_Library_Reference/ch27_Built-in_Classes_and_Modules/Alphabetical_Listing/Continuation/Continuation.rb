Continuation.public_methods(false).sort.each do |method| 
  puts method
end
puts
Continuation.public_instance_methods().sort.each do |method| 
  puts method
end
puts
Continuation.constants.sort.each do |constant| 
  puts constant
end
puts
puts Continuation.superclass