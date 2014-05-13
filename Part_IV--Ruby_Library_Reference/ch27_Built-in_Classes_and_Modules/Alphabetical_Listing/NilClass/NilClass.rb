NilClass.public_methods(false).sort.each do |method| 
  puts method
end
puts
NilClass.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
NilClass.constants.sort.each do |constant| 
  puts constant
end

puts
puts NilClass.superclass