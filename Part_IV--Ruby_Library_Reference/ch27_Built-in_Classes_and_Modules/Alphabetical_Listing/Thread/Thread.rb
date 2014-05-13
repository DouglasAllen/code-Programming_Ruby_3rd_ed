Thread.public_methods(false).sort.each do |method| 
  puts method
end
puts
Thread.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Thread.constants.sort.each do |constant| 
  puts constant
end