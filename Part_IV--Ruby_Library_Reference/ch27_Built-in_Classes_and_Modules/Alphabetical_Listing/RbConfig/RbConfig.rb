RbConfig.public_methods(false).sort.each do |method| 
  puts method
end
puts
RbConfig.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
RbConfig.constants.sort.each do |constant| 
  puts constant
end

puts
puts RbConfig.ancestors