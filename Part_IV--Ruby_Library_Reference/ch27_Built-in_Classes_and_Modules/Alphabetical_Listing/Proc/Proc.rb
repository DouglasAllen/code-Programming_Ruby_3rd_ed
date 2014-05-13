Proc.public_methods(false).sort.each do |method| 
  puts method
end
puts
Proc.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Proc.constants.sort.each do |constant| 
  puts constant
end

puts
puts Proc.superclass