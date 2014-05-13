SystemExit.public_methods(false).sort.each do |method| 
  puts method
end
puts
SystemExit.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
SystemExit.constants.sort.each do |constant| 
  puts constant
end

puts
puts SystemExit.superclass