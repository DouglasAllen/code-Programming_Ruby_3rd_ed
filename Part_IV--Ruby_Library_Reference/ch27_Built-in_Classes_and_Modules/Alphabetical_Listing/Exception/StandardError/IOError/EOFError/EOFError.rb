EOFError.public_methods(false).sort.each do |method| 
  puts method
end
puts
EOFError.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
EOFError.constants.sort.each do |constant| 
  puts constant
end
puts
puts EOFError.superclass