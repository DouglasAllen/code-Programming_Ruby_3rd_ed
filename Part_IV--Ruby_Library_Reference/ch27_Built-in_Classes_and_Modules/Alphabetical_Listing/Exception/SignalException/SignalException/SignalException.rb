SignalException.public_methods(false).sort.each do |method| 
  puts method
end
puts
SignalException.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
SignalException.constants.sort.each do |constant| 
  puts constant
end
puts
puts SignalException.superclass