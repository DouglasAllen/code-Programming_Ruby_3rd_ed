ThreadError.public_methods(false).sort.each do |method| 
  puts method
end
puts
ThreadError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
ThreadError.constants.sort.each do |constant| 
  puts constant
end
puts
puts ThreadError.superclass