Fixnum.public_methods(false).sort.each do |method| 
  puts method
end
puts
Fixnum.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Fixnum.constants.sort.each do |constant| 
  puts constant
end

puts
puts Fixnum.superclass